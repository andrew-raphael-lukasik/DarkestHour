//==============================================================================
// DH_JagdpanzerIVMountedMG
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// Jagdpanzer IV tank destroyer bow MG
//==============================================================================
 class DH_JagdpanzerIVMountedMG extends DH_HiddenTankHullMG;

defaultproperties
{
     ReloadSound=Sound'Vehicle_reloads.Reloads.MG34_ReloadHidden'
     NumMags=8
     DummyTracerClass=Class'DH_Vehicles.DH_MG42VehicleClientTracer'
     mTracerInterval=0.350000
     hudAltAmmoIcon=Texture'InterfaceArt_tex.HUD.mg42_ammo'
     YawBone="mg_yaw"
     YawStartConstraint=0.000000
     YawEndConstraint=65535.000000
     PitchBone="mg_yaw"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="mg_yaw"
     WeaponFireOffset=11.000000
     bInstantFire=False
     Spread=0.002000
     FireInterval=0.050000
     FireSoundClass=SoundGroup'DH_WeaponSounds.mg42.Mg42_FireLoop01'
     AmbientSoundScaling=1.300000
     FireEndSound=SoundGroup'DH_WeaponSounds.mg42.Mg42_FireEnd01'
     ProjectileClass=Class'DH_Vehicles.DH_MG42VehicleBullet'
     ShakeRotMag=(X=10.000000,Y=10.000000,Z=10.000000)
     ShakeOffsetMag=(X=0.010000,Y=0.010000,Z=0.010000)
     MaxPositiveYaw=4000
     MaxNegativeYaw=-4000
     bLimitYaw=True
     BeginningIdleAnim="Idle"
     InitialPrimaryAmmo=150
     Mesh=SkeletalMesh'DH_Jagdpanzer4_anm.jagdpanzer_mg_ext'
}
