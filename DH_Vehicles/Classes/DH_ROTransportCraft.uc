//==============================================================================
// DH_ROTransportCraft
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// Base class for all DH armored personnel carriers (APCs)
//==============================================================================
class DH_ROTransportCraft extends DH_ROWheeledVehicle
      abstract;

var()   float                 MaxPitchSpeed;
var VariableTexPanner LeftTreadPanner, RightTreadPanner;
var() float TreadVelocityScale;

// Sound attachment actor variables
var()   	sound               LeftTreadSound;    // Sound for the left tread squeaking
var()   	sound               RightTreadSound;   // Sound for the right tread squeaking
var()   	sound               RumbleSound;       // Interior rumble sound
var     	bool                bPlayTreadSound;
var     	float               TreadSoundVolume;
var     	ROSoundAttachment   LeftTreadSoundAttach;
var     	ROSoundAttachment   RightTreadSoundAttach;
var     	ROSoundAttachment   InteriorRumbleSoundAttach;
var     	float               MotionSoundVolume;
var()   	name                LeftTrackSoundBone;
var()   	name                RightTrackSoundBone;
var()   	name                RumbleSoundBone;

var         int                 LeftTreadIndex;
var         int                 RightTreadIndex;

var()   float                 MaxCriticalSpeed;

// Wheel animation
var() 	array<name>		LeftWheelBones; 	// for animation only - the bone names for the wheels on the left side
var() 	array<name>		RightWheelBones; 	// for animation only - the bone names for the wheels on the right side

var 	rotator 		LeftWheelRot;       // Keep track of the left wheels rotational speed for animation
var 	rotator 		RightWheelRot;      // Keep track of the right wheels rotational speed for animation
var()	int				WheelRotationScale;

simulated function SetupTreads()
{
	LeftTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
	if ( LeftTreadPanner != None )
	{
		LeftTreadPanner.Material = Skins[LeftTreadIndex];
		LeftTreadPanner.PanDirection = rot(0, 0, 16384);
		LeftTreadPanner.PanRate = 0.0;
		Skins[LeftTreadIndex] = LeftTreadPanner;
	}
	RightTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
	if ( RightTreadPanner != None )
	{
		RightTreadPanner.Material = Skins[RightTreadIndex];
		RightTreadPanner.PanDirection = rot(0, 0, 16384);
		RightTreadPanner.PanRate = 0.0;
		Skins[RightTreadIndex] = RightTreadPanner;
	}
}

simulated function PostBeginPlay()
{
	super.PostBeginPlay();

	if ( Level.NetMode != NM_DedicatedServer )
	{
		SetupTreads();

		if (  LeftTreadSoundAttach == none )
		{
			LeftTreadSoundAttach = Spawn(class 'ROSoundAttachment');
			LeftTreadSoundAttach.AmbientSound = LeftTreadSound;
			AttachToBone(LeftTreadSoundAttach, LeftTrackSoundBone);
		}

		if (  RightTreadSoundAttach == none )
		{
			RightTreadSoundAttach = Spawn(class 'ROSoundAttachment');
			RightTreadSoundAttach.AmbientSound = RightTreadSound;
			AttachToBone(RightTreadSoundAttach, RightTrackSoundBone );
		}

		if (  InteriorRumbleSoundAttach == none )
		{
			InteriorRumbleSoundAttach = Spawn(class 'ROSoundAttachment');
			InteriorRumbleSoundAttach.AmbientSound = RumbleSound;
			AttachToBone(InteriorRumbleSoundAttach, RumbleSoundBone );
		}
	}

/*	if( HasAnim('driver_hatch_idle_open'))
	{
	    LoopAnim('driver_hatch_idle_open');
	}*/
}

simulated function UpdateMovementSound()
{
    if (  LeftTreadSoundAttach != none)
    {
       LeftTreadSoundAttach.SoundVolume= MotionSoundVolume * 1.0;
    }

    if (  RightTreadSoundAttach != none)
    {
       RightTreadSoundAttach.SoundVolume= MotionSoundVolume * 1.0;
    }

    if (  InteriorRumbleSoundAttach != none)
    {
       InteriorRumbleSoundAttach.SoundVolume= MotionSoundVolume;
    }
}

simulated event DrivingStatusChanged()
{
    Super.DrivingStatusChanged();

    if (!bDriving)
    {
        if ( LeftTreadPanner != None )
            LeftTreadPanner.PanRate = 0.0;

        if ( RightTreadPanner != None )
            RightTreadPanner.PanRate = 0.0;

        // Not moving, so no motion sound
        MotionSoundVolume=0.0;
        UpdateMovementSound();
    }
}

simulated function Destroyed()
{
	DestroyTreads();

	if( LeftTreadSoundAttach != none )
	    LeftTreadSoundAttach.Destroy();
	if( RightTreadSoundAttach != none )
	    RightTreadSoundAttach.Destroy();
	if( InteriorRumbleSoundAttach != none )
	    InteriorRumbleSoundAttach.Destroy();

	super.Destroyed();
}

// DriverLeft() called by KDriverLeave()
function DriverLeft()
{
    // Not moving, so no motion sound
    MotionSoundVolume=0.0;
    UpdateMovementSound();

    Super.DriverLeft();
}

simulated function DestroyTreads()
{
	if ( LeftTreadPanner != None )
	{
		Level.ObjectPool.FreeObject(LeftTreadPanner);
		LeftTreadPanner = None;
	}
	if ( RightTreadPanner != None )
	{
		Level.ObjectPool.FreeObject(RightTreadPanner);
		RightTreadPanner = None;
	}
}

simulated function Tick(float DeltaTime)
{
	local float LinTurnSpeed;
	local float MotionSoundTemp;
	local KRigidBodyState BodyState;
	local float MySpeed;
	local int i;

	Super.Tick( DeltaTime );

	// Only need these effects client side
	if( Level.Netmode != NM_DedicatedServer )
	{

		// Shame on you Psyonix, for calling VSize() 3 times every tick, when it only needed to be called once.
		// VSize() is very CPU intensive - Ramm
		MySpeed = VSize(Velocity);

		// Setup sounds that are dependent on velocity
		MotionSoundTemp =  MySpeed/MaxPitchSpeed * 255;
		if ( MySpeed > 0.1 )
		{
		  	MotionSoundVolume =  FClamp(MotionSoundTemp, 0, 255);
		}
		else
		{
		  	MotionSoundVolume=0;
		}
		UpdateMovementSound();

		if( MySpeed >= MaxCriticalSpeed && Controller != None )
		{
			if( Controller.IsA('ROPlayer') )
				ROPlayer(Controller).aForward = -32768; //forces player to pull back on throttle
		}


		KGetRigidBodyState(BodyState);
		LinTurnSpeed = 0.5 * BodyState.AngVel.Z;

		if ( LeftTreadPanner != None )
		{
			LeftTreadPanner.PanRate = MySpeed / TreadVelocityScale;
			if (Velocity dot Vector(Rotation) < 0)
				LeftTreadPanner.PanRate = -1 * LeftTreadPanner.PanRate;
			LeftTreadPanner.PanRate += LinTurnSpeed;
		}

		if ( RightTreadPanner != None )
		{
			RightTreadPanner.PanRate = MySpeed / TreadVelocityScale;
			if (Velocity Dot Vector(Rotation) < 0)
				RightTreadPanner.PanRate = -1 * RightTreadPanner.PanRate;
			RightTreadPanner.PanRate -= LinTurnSpeed;
		}

		// Animate the tank wheels
		LeftWheelRot.pitch += LeftTreadPanner.PanRate * WheelRotationScale;
		RightWheelRot.pitch += RightTreadPanner.PanRate * WheelRotationScale;

		for(i=0; i<LeftWheelBones.Length; i++)
		{
			  SetBoneRotation(LeftWheelBones[i], LeftWheelRot);
		}

		for(i=0; i<RightWheelBones.Length; i++)
		{
			  SetBoneRotation(RightWheelBones[i], RightWheelRot);
		}
	}

    if(Level.NetMode != NM_DedicatedServer)
    	CheckEmitters();
}

// Overridden due to the Onslaught team lock not working in RO
function bool TryToDrive(Pawn P)
{
	local int x;

	//don't allow vehicle to be stolen when somebody is in a turret
	if (!bTeamLocked && P.GetTeamNum() != VehicleTeam)
	{
		for (x = 0; x < WeaponPawns.length; x++)
			if (WeaponPawns[x].Driver != None)
			{
				DenyEntry( P, 2 );
				return false;
			}
	}
    //Override crouching requirement to enter
	if ( bNonHumanControl || (P.Controller == None) || (Driver != None) || (P.DrivenVehicle != None) || !P.Controller.bIsPlayer
	     || P.IsA('Vehicle') || Health <= 0 || (P.Weapon != none && P.Weapon.IsInState('Reloading')) )
		return false;

	if( !Level.Game.CanEnterVehicle(self, P) )
		return false;

	// Check vehicle Locking....
	if ( bTeamLocked && ( P.GetTeamNum() != VehicleTeam ))
	{
		DenyEntry( P, 1 );
		return false;
	}
	else if( bMustBeTankCommander && !ROPlayerReplicationInfo(P.Controller.PlayerReplicationInfo).RoleInfo.bCanBeTankCrew && P.IsHumanControlled())
	{
	   DenyEntry( P, 0 );
	   return false;
	}
	else
	{
		if ( bEnterringUnlocks && bTeamLocked )
			bTeamLocked = false;

		KDriverEnter( P );
		return true;
	}
}

// TakeDamage - overloaded to prevent bayonet and bash attacks from damaging vehicles
//				for Tanks, we'll probably want to prevent bullets from doing damage too
function TakeDamage(int Damage, Pawn instigatedBy, vector HitLocation, vector Momentum, class<DamageType> DamageType, optional int HitIndex)
{

    local int i;
    local float VehicleDamageMod;
    local int HitPointDamage;
	local int InstigatorTeam;
	local controller InstigatorController;

	// Fix for suicide death messages
    if (DamageType == class'Suicided')
    {
	    DamageType = Class'ROSuicided';
	    Super(ROVehicle).TakeDamage(Damage, instigatedBy, Hitlocation, Momentum, damageType);
	}
	else if (DamageType == class'ROSuicided')
	{
		super(ROVehicle).TakeDamage(Damage, instigatedBy, Hitlocation, Momentum, damageType);
	}

	// Quick fix for the thing giving itself impact damage
	if (instigatedBy == self)
		return;

	// Don't allow your own teammates to destroy vehicles in spawns (and you know some jerks would get off on doing that to thier team :) )
	if( !bDriverAlreadyEntered )
	{
		if ( InstigatedBy != None )
			InstigatorController = instigatedBy.Controller;

		if ( InstigatorController == None )
		{
			if ( DamageType.default.bDelayedDamage )
				InstigatorController = DelayedDamageInstigatorController;
		}

		if ( InstigatorController != None )
		{
			InstigatorTeam = InstigatorController.GetTeamNum();

			if ( (GetTeamNum() != 255) && (InstigatorTeam != 255) )
			{
				if ( GetTeamNum() == InstigatorTeam )
				{
					return;
				}
			}
		}
	}

	// Hacked in APC damage mod for halftracks and armored cars, but bullets/bayo/nades/bashing still shouldn't work...
	if (DamageType != none )
	{
	   if(class<ROWeaponDamageType>(DamageType) != none &&
       class<ROWeaponDamageType>(DamageType).default.APCDamageModifier >= 0.25)
	   {
	      VehicleDamageMod = class<ROWeaponDamageType>(DamageType).default.APCDamageModifier;
       }
	   else if(class<ROVehicleDamageType>(DamageType) != none &&
	   class<ROVehicleDamageType>(DamageType).default.APCDamageModifier >= 0.25)
       {
          VehicleDamageMod = class<ROVehicleDamageType>(DamageType).default.APCDamageModifier;
       }
	}

	for(i=0; i<VehHitpoints.Length; i++)
	{
    	HitPointDamage=Damage;

		if ( VehHitpoints[i].HitPointType == HP_Driver )
		{
			// Damage for large weapons
			if(	class<ROWeaponDamageType>(DamageType) != none && class<ROWeaponDamageType>(DamageType).default.VehicleDamageModifier > 0.25 )
			{
				if ( Driver != none && DriverPositions[DriverPositionIndex].bExposed && IsPointShot(Hitlocation,Momentum, 1.0, i))
				{
					//Level.Game.Broadcast(self, "Hit Driver"); //re-comment when fixed
					Driver.TakeDamage(Damage, instigatedBy, Hitlocation, Momentum, damageType);
				}
			}
			// Damage for small (non penetrating) arms
			else
			{
                if ( Driver != none && DriverPositions[DriverPositionIndex].bExposed && IsPointShot(Hitlocation,Momentum, 1.0, i, DriverHitCheckDist))
				{
                    //Level.Game.Broadcast(self, "Hit Driver");  //re-comment when fixed
                    Driver.TakeDamage(150, instigatedBy, Hitlocation, Momentum, damageType); //just kill the bloody driver - it's a headshot!
				}
			}
		}
		else if ( IsPointShot(Hitlocation,Momentum, 1.0, i) )
		{
			HitPointDamage *= VehHitpoints[i].DamageMultiplier;
			HitPointDamage *= VehicleDamageMod;

			if ( VehHitpoints[i].HitPointType == HP_Engine )
			{
                if(bDebuggingText)
                Level.Game.Broadcast(self, "Engine Hit Effective");
                DamageEngine(HitPointDamage, instigatedBy, Hitlocation, Momentum, damageType);
			}
			else if ( VehHitpoints[i].HitPointType == HP_AmmoStore )
			{
                if(bDebuggingText)
				Level.Game.Broadcast(self, "Ammo Hit Effective");
                Damage *= Health;//VehHitpoints[i].DamageMultiplier;
                break;
			}
		}
	}

	Damage *= RandRange(0.85, 1.15);

	// Add in the Vehicle damage modifier for the actual damage to the vehicle itself
    Damage *= VehicleDamageMod;

	super(ROVehicle).TakeDamage(Damage, instigatedBy, Hitlocation, Momentum, damageType);

	if (Health >= 0 && Health <= HealthMax/3)
	{
	    bDisableThrottle=true;
	    bEngineDead=true;
	    DamagedEffectHealthFireFactor=1.0; //play fire effect
	    IdleSound=VehicleBurningSound;
        StartUpSound=none;
        ShutDownSound=none;
	    AmbientSound=VehicleBurningSound;
	    SoundVolume=255;
	    SoundRadius=600;
	}

}

//We want to disable APC if: engine is dead or vehicle takes big damage
//This should give time for troops to bail out and escape before vehicle blows
simulated function bool IsDisabled()
{
	return ((EngineHealth <= 0) || (Health >= 0 && Health <= HealthMax/3));
}

defaultproperties
{
     LeftTreadIndex=1
     RightTreadIndex=2
     MaxCriticalSpeed=800.000000
     WheelRotationScale=500
     PointValue=2.000000
     DestructionEffectClass=Class'ROEffects.ROVehicleDestroyedEmitter'
     VehicleSpikeTime=60.000000
     bIsApc=True
     bKeepDriverAuxCollision=False
}
