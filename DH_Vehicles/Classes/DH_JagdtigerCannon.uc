//==============================================================================
// DH_JagdtigerCannon
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// German Jadgpanzer VI - Ausf. B (Jagdtiger) tank cannon
//==============================================================================
class DH_JagdtigerCannon extends DH_ROTankCannon;


// Limit the left and right movement of the driver
simulated function int LimitYaw(int yaw)
{
    local int NewYaw;
	local ROVehicleWeaponPawn PwningPawn;

    PwningPawn = ROVehicleWeaponPawn(Owner);

    if ( !bLimitYaw )
    {
        return yaw;
    }

    NewYaw = yaw;

    if( PwningPawn != none )
    {
	   	if( yaw > PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewPositiveYawLimit)
	   	{
	   		NewYaw = PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewPositiveYawLimit;
	   	}
	   	else if( yaw < PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewNegativeYawLimit )
	   	{
	   		NewYaw = PwningPawn.DriverPositions[PwningPawn.DriverPositionIndex].ViewNegativeYawLimit;
	  	}
  	}
  	else
  	{
	   	if( yaw > MaxPositiveYaw )
	   	{
	   		NewYaw = MaxPositiveYaw;
	   	}
	   	else if( yaw < MaxNegativeYaw )
	   	{
	   		NewYaw = MaxNegativeYaw;
	  	}
  	}

  	return NewYaw;
}

defaultproperties
{
     SecondarySpread=0.001290
     ManualRotationsPerSecond=0.010000
     PoweredRotationsPerSecond=0.010000
     bIsAssaultGun=True
     FrontArmorFactor=10.000000
     RightArmorFactor=10.000000
     LeftArmorFactor=10.000000
     RearArmorFactor=10.000000
     FrontArmorSlope=40.000000
     RightArmorSlope=40.000000
     LeftArmorSlope=40.000000
     RearArmorSlope=40.000000
     FrontLeftAngle=330.000000
     FrontRightAngle=30.000000
     RearRightAngle=150.000000
     RearLeftAngle=210.000000
     ReloadSoundOne=Sound'Vehicle_reloads.Reloads.Tiger_reload_01'
     ReloadSoundTwo=Sound'Vehicle_reloads.Reloads.Tiger_reload_02'
     ReloadSoundThree=Sound'Vehicle_reloads.Reloads.Tiger_reload_03'
     ReloadSoundFour=Sound'Vehicle_reloads.Reloads.Tiger_reload_04'
     CannonFireSound(0)=SoundGroup'DH_GerVehicleSounds.88mm.DH88mm_01'
     CannonFireSound(1)=SoundGroup'DH_GerVehicleSounds.88mm.DH88mm_02'
     CannonFireSound(2)=SoundGroup'DH_GerVehicleSounds.88mm.DH88mm_03'
     ProjectileDescriptions(0)="APCBC"
     RangeSettings(1)=100
     RangeSettings(2)=200
     RangeSettings(3)=300
     RangeSettings(4)=400
     RangeSettings(5)=500
     RangeSettings(6)=600
     RangeSettings(7)=700
     RangeSettings(8)=800
     RangeSettings(9)=900
     RangeSettings(10)=1000
     RangeSettings(11)=1100
     RangeSettings(12)=1200
     RangeSettings(13)=1300
     RangeSettings(14)=1400
     RangeSettings(15)=1500
     RangeSettings(16)=1600
     RangeSettings(17)=1700
     RangeSettings(18)=1800
     RangeSettings(19)=1900
     RangeSettings(20)=2000
     RangeSettings(21)=2200
     RangeSettings(22)=2400
     RangeSettings(23)=2600
     RangeSettings(24)=2800
     RangeSettings(25)=3000
     VehHitpoints(0)=(PointRadius=10.000000,PointScale=1.000000,PointBone="com_player")
     YawBone="Gun"
     YawStartConstraint=-2000.000000
     YawEndConstraint=2000.000000
     PitchBone="Turret"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Barrel"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=30.000000
     RotationsPerSecond=0.010000
     FireInterval=15.000000
     EffectEmitterClass=Class'ROEffects.TankCannonFireEffect'
     FireSoundVolume=512.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse2'
     FireForce="Explosion05"
     ProjectileClass=Class'DH_Vehicles.DH_JagdtigerCannonShell'
     ShakeRotMag=(Z=50.000000)
     ShakeRotRate=(Z=1000.000000)
     ShakeRotTime=4.000000
     ShakeOffsetMag=(Z=1.000000)
     ShakeOffsetRate=(Z=100.000000)
     ShakeOffsetTime=10.000000
     AIInfo(0)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.500000)
     AIInfo(1)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.015000)
     CustomPitchUpLimit=2731
     CustomPitchDownLimit=64171
     MaxPositiveYaw=1820
     MaxNegativeYaw=-1820
     bLimitYaw=True
     BeginningIdleAnim="com_idle_close"
     InitialPrimaryAmmo=20
     InitialSecondaryAmmo=20
     PrimaryProjectileClass=Class'DH_Vehicles.DH_JagdtigerCannonShell'
     SecondaryProjectileClass=Class'DH_Vehicles.DH_JagdtigerCannonShellHE'
     Mesh=SkeletalMesh'DH_Jagdtiger_anm.jagdtiger_turret_ext'
     Skins(0)=Texture'DH_VehiclesGE_tex2.ext_vehicles.JagdTiger_body_ext'
     SoundVolume=130
     SoundRadius=300.000000
}
