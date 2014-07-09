//==============================================================================
// DH_Cromwell6PdrCannon
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// British Cruiser Tank Mk.VIII Cromwell Mk.I cannon
//==============================================================================
class DH_Cromwell6PdrCannon extends DH_ROTankCannon;


/*
// Special tracer handling for this type of cannon
simulated function UpdateTracer()
{
	local rotator SpawnDir;

	if (Level.NetMode == NM_DedicatedServer || !bUsesTracers)
		return;


 	if (Level.TimeSeconds > mLastTracerTime + mTracerInterval)
	{
		if (Instigator != None && Instigator.IsLocallyControlled())
		{
			SpawnDir = WeaponFireRotation;
		}
		else
		{
			SpawnDir = GetBoneRotation(WeaponFireAttachmentBone);
		}

        if (Instigator != None && !Instigator.PlayerReplicationInfo.bBot)
        {
        	SpawnDir.Pitch += AddedPitch;
        }

        Spawn(DummyTracerClass,,, WeaponFireLocation, SpawnDir);

		mLastTracerTime = Level.TimeSeconds;
	}
}
*/

defaultproperties
{
     SecondarySpread=0.001750
     TertiarySpread=0.003600
     ManualRotationsPerSecond=0.029000
     PoweredRotationsPerSecond=0.062500
     FrontArmorFactor=7.600000
     RightArmorFactor=6.300000
     LeftArmorFactor=6.300000
     RearArmorFactor=5.700000
     FrontLeftAngle=318.000000
     FrontRightAngle=42.000000
     RearRightAngle=138.000000
     RearLeftAngle=222.000000
     ReloadSoundOne=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_01'
     ReloadSoundTwo=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_02'
     ReloadSoundThree=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_03'
     ReloadSoundFour=Sound'DH_Vehicle_Reloads.Reloads.reload_01s_04'
     CannonFireSound(0)=SoundGroup'DH_ArtillerySounds.ATGun.57mm_fire01'
     CannonFireSound(1)=SoundGroup'DH_ArtillerySounds.ATGun.57mm_fire02'
     CannonFireSound(2)=SoundGroup'DH_ArtillerySounds.ATGun.57mm_fire03'
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
     AddedPitch=50
     ReloadSound=Sound'Vehicle_reloads.Reloads.DT_ReloadHidden'
     NumAltMags=6
     DummyTracerClass=Class'DH_Vehicles.DH_BesaVehicleClientTracer'
     mTracerInterval=0.460000
     bUsesTracers=True
     bAltFireTracersOnly=True
     VehHitpoints(0)=(PointRadius=9.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(Z=12.000000))
     VehHitpoints(1)=(PointRadius=16.000000,PointScale=1.000000,PointBone="com_player",PointOffset=(Z=-11.000000))
     hudAltAmmoIcon=Texture'InterfaceArt_tex.HUD.mg42_ammo'
     YawBone="Turret"
     PitchBone="Gun"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="Gun"
     GunnerAttachmentBone="com_attachment"
     WeaponFireOffset=200.000000
     AltFireOffset=(X=40.000000,Y=-12.500000,Z=1.000000)
     RotationsPerSecond=0.062500
     bAmbientAltFireSound=True
     FireInterval=4.000000
     AltFireInterval=0.092000
     EffectEmitterClass=Class'ROEffects.TankCannonFireEffect'
     AmbientEffectEmitterClass=Class'ROVehicles.TankMGEmitter'
     bAmbientEmitterAltFireOnly=True
     FireSoundVolume=512.000000
     AltFireSoundClass=SoundGroup'Inf_Weapons.dt.dt_fire_loop'
     AltFireSoundScaling=3.000000
     RotateSound=Sound'Vehicle_Weapons.Turret.hydraul_turret_traverse'
     AltFireEndSound=SoundGroup'Inf_Weapons.dt.dt_fire_end'
     FireForce="Explosion05"
     ProjectileClass=Class'DH_Vehicles.DH_Cromwell6PdrCannonShell'
     AltFireProjectileClass=Class'DH_Vehicles.DH_BesaVehicleBullet'
     ShakeRotMag=(Z=50.000000)
     ShakeRotRate=(Z=1000.000000)
     ShakeRotTime=4.000000
     ShakeOffsetMag=(Z=1.000000)
     ShakeOffsetRate=(Z=100.000000)
     ShakeOffsetTime=10.000000
     AltShakeRotMag=(X=10.000000,Y=10.000000,Z=10.000000)
     AltShakeRotRate=(X=10000.000000,Y=10000.000000,Z=10000.000000)
     AltShakeRotTime=2.000000
     AltShakeOffsetMag=(X=0.010000,Y=0.010000,Z=0.010000)
     AltShakeOffsetRate=(X=1000.000000,Y=1000.000000,Z=1000.000000)
     AltShakeOffsetTime=2.000000
     AIInfo(0)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.500000)
     AIInfo(1)=(bLeadTarget=True,WarnTargetPct=0.750000,RefireRate=0.015000)
     CustomPitchUpLimit=3641
     CustomPitchDownLimit=64500
     BeginningIdleAnim="com_idle_close"
     InitialPrimaryAmmo=45
     InitialSecondaryAmmo=30
     InitialAltAmmo=225
     PrimaryProjectileClass=Class'DH_Vehicles.DH_Cromwell6PdrCannonShell'
     SecondaryProjectileClass=Class'DH_Vehicles.DH_Cromwell6PdrCannonShellHE'
     Mesh=SkeletalMesh'DH_Cromwell_anm.cromwell_6pdr_turret_ext'
     Skins(0)=Texture'DH_VehiclesUK_tex.ext_vehicles.Cromwell_body_ext'
     Skins(1)=Texture'DH_VehiclesUK_tex.int_vehicles.Cromwell_body_int2'
     Skins(2)=Texture'DH_VehiclesUK_tex.int_vehicles.Cromwell_body_int2'
     SoundVolume=130
     SoundRadius=300.000000
}
