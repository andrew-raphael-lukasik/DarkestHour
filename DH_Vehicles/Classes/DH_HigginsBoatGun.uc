//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_HigginsBoatGun extends ROVehicleWeapon;

var()   class<Projectile> TracerProjectileClass; // Matt: replaces DummyTracerClass as tracer is now a real bullet that damages, not just a client-only effect, so the old name was misleading
var()   int               TracerFrequency;       // how often a tracer is loaded in (as in: 1 in the value of TracerFrequency)

var     bool  bReloading;   // This MG is currently reloading
var     int   NumMags;      // Number of mags carried for this MG;
var()   float ReloadLength; // Length of the reload animation. Sorry for the literal, but the Hud Overlay isn't spawned on the server.

replication
{
    // Functions server can call.
    reliable if (Role == ROLE_Authority)
        ClientDoReload;

    reliable if (bNetDirty && bNetOwner && Role == ROLE_Authority)
        bReloading, NumMags;
}

// Limit the left and right movement of the driver
simulated function int LimitYaw(int yaw)
{
    local int NewYaw;
    local ROVehicleWeaponPawn PwningPawn;

    PwningPawn = ROVehicleWeaponPawn(Owner);

    if (!bLimitYaw)
    {
        return yaw;
    }

    NewYaw = yaw;

    if (PwningPawn != none)
    {
        if (yaw > PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewPositiveYawLimit)
        {
            NewYaw = PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewPositiveYawLimit;
        }
        else if (yaw < PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewNegativeYawLimit)
        {
            NewYaw = PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewNegativeYawLimit;
        }
    }
    else
    {
        if (yaw > MaxPositiveYaw)
        {
            NewYaw = MaxPositiveYaw;
        }
        else if (yaw < MaxNegativeYaw)
        {
            NewYaw = MaxNegativeYaw;
        }
    }

    return NewYaw;
}

// Returns true if this weapon is ready to fire
simulated function bool ReadyToFire(bool bAltFire)
{
    if (bReloading)
    {
        return false;
    }

    return super.ReadyToFire(bAltFire);
}

function CeaseFire(Controller C, bool bWasAltFire)
{
    super.CeaseFire(C, bWasAltFire);

    if (!bReloading && !HasAmmo(0))
    {
        HandleReload();
    }
}

function HandleReload()
{
    if (NumMags > 0 && !bReloading)
    {
        bReloading = true;
        NumMags--;
        ClientDoReload();
        NetUpdateTime = Level.TimeSeconds - 1.0;
        SetTimer(ReloadLength, false);
    }
}

// Play the reload animation on the client
simulated function ClientDoReload()
{
    if (Owner != none && VehicleWeaponPawn(Owner) != none && VehicleWeaponPawn(Owner).HUDOverlay != none)
    {
        VehicleWeaponPawn(Owner).HUDOverlay.PlayAnim('Reloads');
    }
}

simulated function Timer()
{
   if (bReloading)
   {
        if (Role == ROLE_Authority)
        {
            bReloading = false;
            MainAmmoCharge[0] = InitialPrimaryAmmo;
            NetUpdateTime = Level.TimeSeconds - 1.0;
        }
   }
}

event bool AttemptFire(Controller C, bool bAltFire)
{
    if (Role != ROLE_Authority || bForceCenterAim)
        return false;

    if (FireCountdown <= 0.0)
    {
        CalcWeaponFire(bAltFire);
        if (bCorrectAim)
            WeaponFireRotation = AdjustAim(bAltFire);

        if (bAltFire)
        {
            if (AltFireSpread > 0.0)
                WeaponFireRotation = rotator(vector(WeaponFireRotation) + VRand()*FRand()*AltFireSpread);
        }
        else if (Spread > 0.0)
        {
            WeaponFireRotation = rotator(vector(WeaponFireRotation) + VRand()*FRand()*Spread);
        }

        DualFireOffset *= -1.0;

        Instigator.MakeNoise(1.0);
        if (bAltFire)
        {
            if (!ConsumeAmmo(2))
            {
                VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
                return false;
            }
            FireCountdown = AltFireInterval;
            AltFire(C);
        }
        else
        {
            if (bMultipleRoundTypes)
            {
                if (ProjectileClass == PrimaryProjectileClass)
                {
                    if (!ConsumeAmmo(0))
                    {
                        VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
                        return false;
                    }
                }
                else if (ProjectileClass == SecondaryProjectileClass)
                {
                    if (!ConsumeAmmo(1))
                    {
                        VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
                        return false;
                    }
                }
            }
            else if (!ConsumeAmmo(0))
            {
                VehicleWeaponPawn(Owner).ClientVehicleCeaseFire(bAltFire);
                HandleReload();
                return false;
            }

            FireCountdown = FireInterval;
            Fire(C);
        }
        AimLockReleaseTime = Level.TimeSeconds + FireCountdown * FireIntervalAimLock;

        return true;
    }

    return false;
}

// Matt: modified to spawn either normal bullet OR tracer, based on proper shot count, not simply time elapsed since last shot
state ProjectileFireMode
{
	function Fire(Controller C)
	{
        // Modulo operator (%) divides rounds previously fired by tracer frequency & returns the remainder - if it divides evenly (result=0) then it's time to fire a tracer
        if (bUsesTracers && ((InitialPrimaryAmmo - MainAmmoCharge[0] - 1) % TracerFrequency == 0.0))
        {
            SpawnProjectile(TracerProjectileClass, false);
        }
        else
        {
            SpawnProjectile(ProjectileClass, false);
        }
    }
}

// Matt: modified to remove the Super in ROVehicleWeapon to remove calling UpdateTracer, now we spawn either a normal bullet OR tracer (see ProjectileFireMode)
simulated function FlashMuzzleFlash(bool bWasAltFire)
{
	super(VehicleWeapon).FlashMuzzleFlash(bWasAltFire);
}

// Fill the ammo up to the initial ammount
function bool GiveInitialAmmo()
{
    local bool bDidResupply;

    if (NumMags != default.NumMags)
    {
        bDidResupply = true;
    }

    MainAmmoCharge[0] = InitialPrimaryAmmo;
    MainAmmoCharge[1] = InitialSecondaryAmmo;
    AltAmmoCharge = InitialAltAmmo;
    NumMags = default.NumMags;

    return bDidResupply;
}

simulated function int getNumMags()
{
    return NumMags;
}

defaultproperties
{
    NumMags=8
    ReloadLength=6.59
    TracerProjectileClass=class'DH_30CalVehicleTracerBullet'
    TracerFrequency=5
    bUsesTracers=true
    VehHitpoints(0)=(PointRadius=9.0,PointScale=1.0,PointBone="com_attachment",PointOffset=(Z=8.0))
    VehHitpoints(1)=(PointRadius=15.0,PointScale=1.0,PointBone="com_attachment",PointOffset=(Z=-13.0))
    bIsMountedTankMG=true
    hudAltAmmoIcon=texture'InterfaceArt_tex.HUD.mg42_ammo'
    YawBone="Gun_protection"
    PitchBone="Gun_protection"
    PitchUpLimit=10000
    PitchDownLimit=50000
    WeaponFireAttachmentBone="tip"
    GunnerAttachmentBone="com_attachment"
    RotationsPerSecond=0.5
    bInstantRotation=true
    bDoOffsetTrace=true
    bAmbientFireSound=true
    bIsRepeatingFF=true
    Spread=0.002
    FireInterval=0.12
    AltFireInterval=0.15
    AmbientEffectEmitterClass=class'DH_Vehicles.DH_Vehicle30CalMGEmitter'
    FireSoundClass=SoundGroup'DH_AlliedVehicleSounds2.3Cal.V30cal_loop01'
    AmbientSoundScaling=5.0
    FireEndSound=SoundGroup'DH_AlliedVehicleSounds2.3Cal.V30cal_end01'
    FireForce="minifireb"
    DamageType=class'ROGame.ROVehMountedMGDamType'
    DamageMin=100
    DamageMax=100
    TraceRange=15000.0
    ProjectileClass=class'DH_Vehicles.DH_30CalVehicleBullet'
    ShakeRotMag=(X=25.0,Z=10.0)
    ShakeRotRate=(X=5000.0,Y=5000.0,Z=5000.0)
    ShakeRotTime=2.0
    ShakeOffsetMag=(X=0.5,Z=0.2)
    ShakeOffsetRate=(X=500.0,Y=500.0,Z=500.0)
    ShakeOffsetTime=2.0
    AIInfo(0)=(bLeadTarget=true,bFireOnRelease=true,aimerror=800.0,RefireRate=0.07058)
    CustomPitchUpLimit=7500
    CustomPitchDownLimit=63000
    MaxPositiveYaw=12000
    MaxNegativeYaw=-12000
    bLimitYaw=true
    InitialPrimaryAmmo=200
    CullDistance=8000.0
    Mesh=SkeletalMesh'DH_M3A1Halftrack_anm.m3halftrack_gun'
    bCollideActors=true
    bBlockActors=true
    bProjTarget=true
    bBlockZeroExtentTraces=true
    bBlockNonZeroExtentTraces=true
}
