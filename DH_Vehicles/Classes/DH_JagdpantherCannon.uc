//==============================================================================
// DH_JagdpantherCannon
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// German Jadgpanzer V 'Jagdpanther' tank destroyer cannon
//==============================================================================
class DH_JagdpantherCannon extends DH_ROTankCannon;


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
     SecondarySpread=0.001350
     ManualRotationsPerSecond=0.020000
     PoweredRotationsPerSecond=0.020000
     bIsAssaultGun=True
     FrontArmorFactor=10.000000
     RightArmorFactor=10.000000
     LeftArmorFactor=10.000000
     RearArmorFactor=10.000000
     FrontArmorSlope=50.000000
     RightArmorSlope=50.000000
     LeftArmorSlope=50.000000
     RearArmorSlope=50.000000
     FrontLeftAngle=335.000000
     FrontRightAngle=25.000000
     RearRightAngle=155.000000
     RearLeftAngle=205.000000
     ReloadSoundOne=Sound'DH_Vehicle_Reloads.Reloads.reload_02s_01'
     ReloadSoundTwo=Sound'DH_Vehicle_Reloads.Reloads.reload_02s_02'
     ReloadSoundThree=Sound'DH_Vehicle_Reloads.Reloads.reload_02s_03'
     ReloadSoundFour=Sound'DH_Vehicle_Reloads.Reloads.reload_02s_04'
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
     RangeSettings(26)=3200
     RangeSettings(27)=3400
     RangeSettings(28)=3600
     RangeSettings(29)=3800
     RangeSettings(30)=4000
     VehHitpoints(0)=(PointRadius=9.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(X=-4.000000))
     VehHitpoints(1)=(PointRadius=16.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(X=-4.000000,Z=-23.000000))
     YawBone="Gun"
     YawStartConstraint=-3000.000000
     YawEndConstraint=3000.000000
     PitchBone="gun_pitch"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Barrel"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=30.000000
     RotationsPerSecond=0.020000
     FireInterval=8.000000
     EffectEmitterClass=Class'ROEffects.TankCannonFireEffect'
     FireSoundVolume=512.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.manual_turret_traverse2'
     FireForce="Explosion05"
     ProjectileClass=Class'DH_Vehicles.DH_JagdpantherCannonShell'
     ShakeRotMag=(Z=50.000000)
     ShakeRotRate=(Z=1000.000000)
     ShakeRotTime=4.000000
     ShakeOffsetMag=(Z=1.000000)
     ShakeOffsetRate=(Z=100.000000)
     ShakeOffsetTime=10.000000
     AIInfo(0)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.500000)
     AIInfo(1)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.015000)
     CustomPitchUpLimit=2548
     CustomPitchDownLimit=64079
     MaxPositiveYaw=2367
     MaxNegativeYaw=-2367
     bLimitYaw=True
     BeginningIdleAnim="com_idle_close"
     InitialPrimaryAmmo=42
     InitialSecondaryAmmo=15
     PrimaryProjectileClass=Class'DH_Vehicles.DH_JagdpantherCannonShell'
     SecondaryProjectileClass=Class'DH_Vehicles.DH_JagdpantherCannonShellHE'
     Mesh=SkeletalMesh'DH_Jagdpanther_anm.Jagdpanther_turret_ext'
     Skins(0)=Texture'DH_VehiclesGE_tex2.ext_vehicles.Jagdpanther_body_goodwood'
     Skins(1)=Texture'DH_VehiclesGE_tex2.int_vehicles.Jagdpanther_walls_int'
     Skins(2)=Texture'DH_VehiclesGE_tex2.int_vehicles.Jagdpanther_turret_int'
     SoundVolume=130
     SoundRadius=300.000000
}
