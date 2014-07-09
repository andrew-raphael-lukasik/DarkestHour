//==============================================================================
// DH_TigerMountedMG
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// German Panzer VI Ausf. E "Tiger" mounted MG34
//==============================================================================
class DH_TigerMountedMG extends DH_HiddenTankHullMG;

defaultproperties
{
     ReloadSound=Sound'Vehicle_reloads.Reloads.MG34_ReloadHidden'
     NumMags=8
     DummyTracerClass=Class'DH_Vehicles.DH_MG34VehicleClientTracer'
     mTracerInterval=0.495867
     hudAltAmmoIcon=Texture'InterfaceArt_tex.HUD.mg42_ammo'
     YawBone="mg_yaw"
     YawStartConstraint=0.000000
     YawEndConstraint=65535.000000
     PitchBone="mg_pitch"
     PitchUpLimit=15000
     PitchDownLimit=45000
     WeaponFireAttachmentBone="mg_yaw"
     WeaponFireOffset=20.000000
     bInstantFire=False
     Spread=0.002000
     FireInterval=0.070580
     FireSoundClass=SoundGroup'DH_WeaponSounds.mg34.mg34_fire_loop'
     AmbientSoundScaling=5.000000
     FireEndSound=SoundGroup'DH_WeaponSounds.mg34.mg34_fire_end'
     ProjectileClass=Class'DH_Vehicles.DH_MG34VehicleBullet'
     ShakeRotMag=(X=10.000000,Y=10.000000,Z=10.000000)
     ShakeOffsetMag=(X=0.010000,Y=0.010000,Z=0.010000)
     MaxPositiveYaw=7000
     MaxNegativeYaw=-7000
     bLimitYaw=True
     InitialPrimaryAmmo=150
     Mesh=SkeletalMesh'axis_panzer4F1_anm.Panzer4F1_mg_ext'
}
