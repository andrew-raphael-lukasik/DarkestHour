//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_PanzerIVJCannon extends DHVehicleCannon;

defaultproperties
{
    InitialTertiaryAmmo=8
    TertiaryProjectileClass=class'DH_Vehicles.DH_PanzerIVCannonShellHEAT'
    SecondarySpread=0.00127
    TertiarySpread=0.00357
    ManualRotationsPerSecond=0.02
    bHasAddedSideArmor=true
    FrontArmorFactor=5.0
    RightArmorFactor=3.1
    LeftArmorFactor=3.1
    RearArmorFactor=3.1
    FrontArmorSlope=12.0
    RightArmorSlope=26.0
    LeftArmorSlope=26.0
    RearArmorSlope=10.0
    FrontLeftAngle=322.0
    FrontRightAngle=38.0
    RearRightAngle=142.0
    RearLeftAngle=218.0
    ReloadSoundOne=sound'DH_Vehicle_Reloads.Reloads.reload_01s_01'
    ReloadSoundTwo=sound'DH_Vehicle_Reloads.Reloads.reload_01s_02'
    ReloadSoundThree=sound'DH_Vehicle_Reloads.Reloads.reload_02s_03'
    ReloadSoundFour=sound'DH_Vehicle_Reloads.Reloads.reload_01s_04'
    CannonFireSound(0)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire01'
    CannonFireSound(1)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire02'
    CannonFireSound(2)=SoundGroup'Vehicle_Weapons.PanzerIV_F2.75mm_L_fire03'
    ProjectileDescriptions(0)="APCBC"
    ProjectileDescriptions(2)="HEAT"
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
    ReloadSound=sound'Vehicle_reloads.Reloads.MG34_ReloadHidden'
    NumAltMags=5
    AltTracerProjectileClass=class'DH_MG34VehicleTracerBullet'
    AltFireTracerFrequency=7
    bUsesTracers=true
    bAltFireTracersOnly=true
    hudAltAmmoIcon=texture'InterfaceArt_tex.HUD.mg42_ammo'
    YawBone="Turret"
    PitchBone="Gun"
    PitchUpLimit=15000
    PitchDownLimit=45000
    WeaponFireAttachmentBone="Gun"
    GunnerAttachmentBone="com_attachment"
    WeaponFireOffset=200.0
    AltFireOffset=(X=10.0,Y=19.0,Z=2.0)
    bAmbientAltFireSound=true
    FireInterval=5.0
    AltFireInterval=0.07058
    FireSoundVolume=512.0
    AltFireSoundClass=SoundGroup'DH_WeaponSounds.mg34.mg34_fire_loop'
    AltFireSoundScaling=3.0
    AltFireEndSound=SoundGroup'DH_WeaponSounds.mg34.mg34_fire_end'
    FireForce="Explosion05"
    ProjectileClass=class'DH_Vehicles.DH_PanzerIVCannonShell'
    AltFireProjectileClass=class'DH_Vehicles.DH_MG34VehicleBullet'
    ShakeRotMag=(Z=50.0)
    ShakeRotRate=(Z=1000.0)
    ShakeRotTime=4.0
    ShakeOffsetMag=(Z=1.0)
    ShakeOffsetRate=(Z=100.0)
    ShakeOffsetTime=10.0
    AltShakeRotMag=(X=1.0,Y=1.0,Z=1.0)
    AltShakeRotRate=(X=10000.0,Y=10000.0,Z=10000.0)
    AltShakeRotTime=2.0
    AltShakeOffsetMag=(X=0.01,Y=0.01,Z=0.01)
    AltShakeOffsetRate=(X=1000.0,Y=1000.0,Z=1000.0)
    AltShakeOffsetTime=2.0
    AIInfo(0)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.5)
    AIInfo(1)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.015)
    CustomPitchUpLimit=3641
    CustomPitchDownLimit=64080
    BeginningIdleAnim="com_idle_close"
    InitialPrimaryAmmo=56
    InitialSecondaryAmmo=35
    InitialAltAmmo=150
    PrimaryProjectileClass=class'DH_Vehicles.DH_PanzerIVCannonShell'
    SecondaryProjectileClass=class'DH_Vehicles.DH_PanzerIVCannonShellHE'
    Mesh=SkeletalMesh'DH_PanzerIV_anm.panzer4J_turret_ext'
    Skins(0)=texture'DH_VehiclesGE_tex3.ext_vehicles.panzer4J_body_ext'
    Skins(1)=texture'DH_VehiclesGE_tex3.ext_vehicles.Panzer4J_armor_ext'
    Skins(2)=texture'axis_vehicles_tex.int_vehicles.panzer3_int'
    SoundVolume=130
    SoundRadius=200.0
    HighDetailOverlay=Shader'axis_vehicles_tex.int_vehicles.panzer3_int_s'
    bUseHighDetailOverlayIndex=true
    HighDetailOverlayIndex=2
}
