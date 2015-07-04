//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_JacksonCannon extends DHVehicleCannon;

defaultproperties
{
    InitialTertiaryAmmo=10
    TertiaryProjectileClass=class'DH_Vehicles.DH_JacksonCannonShellHE'
    SecondarySpread=0.0011
    TertiarySpread=0.00125
    ManualRotationsPerSecond=0.01
    PoweredRotationsPerSecond=0.0625
    FrontArmorFactor=6.9
    RightArmorFactor=3.2
    LeftArmorFactor=3.2
    RearArmorFactor=8.0
    FrontArmorSlope=45.0
    RightArmorSlope=5.0
    LeftArmorSlope=5.0
    FrontLeftAngle=325.0
    FrontRightAngle=35.0
    RearRightAngle=145.0
    RearLeftAngle=215.0
    ReloadSoundOne=sound'Vehicle_reloads.Reloads.SU_76_Reload_01'
    ReloadSoundTwo=sound'Vehicle_reloads.Reloads.SU_76_Reload_02'
    ReloadSoundThree=sound'Vehicle_reloads.Reloads.SU_76_Reload_03'
    ReloadSoundFour=sound'Vehicle_reloads.Reloads.SU_76_Reload_04'
    CannonFireSound(0)=SoundGroup'Vehicle_Weapons.IS2.122mm_fire01'
    CannonFireSound(1)=SoundGroup'Vehicle_Weapons.IS2.122mm_fire02'
    CannonFireSound(2)=SoundGroup'Vehicle_Weapons.IS2.122mm_fire02'
    ProjectileDescriptions(0)="APCBC"
    ProjectileDescriptions(1)="HVAP"
    ProjectileDescriptions(2)="HE"
    AddedPitch=145
    YawBone="Turret"
    PitchBone="Gun"
    PitchUpLimit=15000
    PitchDownLimit=45000
    WeaponFireAttachmentBone="Gun"
    GunnerAttachmentBone="com_attachment"
    WeaponFireOffset=240.0
    FireInterval=6.0
    FireSoundVolume=512.0
    FireForce="Explosion05"
    ProjectileClass=class'DH_Vehicles.DH_JacksonCannonShell'
    ShakeRotMag=(Z=50.0)
    ShakeRotRate=(Z=1000.0)
    ShakeRotTime=4.0
    ShakeOffsetMag=(Z=1.0)
    ShakeOffsetRate=(Z=100.0)
    ShakeOffsetTime=10.0
    AIInfo(0)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.5)
    AIInfo(1)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.015)
    CustomPitchUpLimit=3641
    CustomPitchDownLimit=63715
    BeginningIdleAnim="com_idle_close"
    InitialPrimaryAmmo=32
    InitialSecondaryAmmo=6
    PrimaryProjectileClass=class'DH_Vehicles.DH_JacksonCannonShell'
    SecondaryProjectileClass=class'DH_Vehicles.DH_JacksonCannonShellHVAP'
    Mesh=SkeletalMesh'DH_Jackson_anm.Jackson_turret_ext'
    Skins(0)=texture'DH_VehiclesUS_tex3.ext_vehicles.M36_turret_ext'
    Skins(1)=texture'DH_VehiclesUS_tex3.int_vehicles.M36_turret_int'
    Skins(2)=texture'DH_VehiclesUS_tex3.int_vehicles.M36_turret_int2'
    SoundVolume=130
    SoundRadius=300.0
}
