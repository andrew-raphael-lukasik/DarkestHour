//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_Sdkfz2342ArmoredCar extends DH_ArmoredWheeledVehicle;

#exec OBJ LOAD FILE=..\Animations\DH_Sdkfz234ArmoredCar_anm.ukx
#exec OBJ LOAD FILE=..\Textures\DH_VehiclesGE_tex6.utx
#exec OBJ LOAD FILE=..\StaticMeshes\DH_German_vehicles_stc3.usx

static function StaticPrecache(LevelInfo L)
{
    super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_body_dunk');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_wheels_dunk');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_extras_dunk');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_accessories');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.int_vehicles.sdkfz2341_body_int');
}

simulated function UpdatePrecacheMaterials()
{

    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_body_dunk');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_wheels_dunk');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_extras_dunk');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_accessories');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex6.int_vehicles.sdkfz2341_body_int');

    super.UpdatePrecacheMaterials();
}

defaultproperties
{
    bNoDriverHatch=true
    bAllowRiders=true
    MaxCriticalSpeed=1039.0
    UFrontArmorFactor=3.0
    URightArmorFactor=0.8
    ULeftArmorFactor=0.8
    URearArmorFactor=0.8
    UFrontArmorSlope=40.0
    VehicleHudTurret=TexRotator'DH_InterfaceArt_tex.Tank_Hud.2342_turret_rot'
    VehicleHudTurretLook=TexRotator'DH_InterfaceArt_tex.Tank_Hud.2342_turret_look'
    FrontLeftAngle=338.0
    FrontRightAngle=22.0
    RearRightAngle=158.0
    RearLeftAngle=202.0
    WheelPenScale=1.2
    WheelLatSlipFunc=(Points=(,(InVal=30.0,OutVal=0.009),(InVal=45.0),(InVal=10000000000.0)))
    WheelLongFrictionScale=1.1
    WheelLatFrictionScale=1.55
    WheelSuspensionTravel=10.0
    WheelSuspensionMaxRenderTravel=5.0
    ChassisTorqueScale=0.095
    MaxSteerAngleCurve=(Points=((OutVal=45.0),(InVal=300.0,OutVal=30.0),(InVal=500.0,OutVal=20.0),(InVal=600.0,OutVal=15.0),(InVal=1000000000.0,OutVal=10.0)))
    GearRatios(0)=-0.35
    GearRatios(3)=0.6
    GearRatios(4)=0.75
    TransRatio=0.13
    ChangeUpPoint=1990.0
    ChangeDownPoint=1000.0
    SteerSpeed=75.0
    TurnDamping=100.0
    SteerBoneName="Steer_Wheel"
    ExhaustEffectClass=class'ROEffects.ExhaustPetrolEffect'
    ExhaustEffectLowClass=class'ROEffects.ExhaustPetrolEffect_simple'
    ExhaustPipes(0)=(ExhaustPosition=(X=-230.0,Y=-68.0,Z=45.0),ExhaustRotation=(Pitch=36000))
    ExhaustPipes(1)=(ExhaustPosition=(X=-230.0,Y=69.0,Z=45.0),ExhaustRotation=(Pitch=36000))
    PassengerWeapons(0)=(WeaponPawnClass=class'DH_Vehicles.DH_Sdkfz2342CannonPawn',WeaponBone="Turret_placement")
    PassengerWeapons(1)=(WeaponPawnClass=class'DH_Vehicles.DH_Sdkfz234PassengerOne',WeaponBone="body")
    PassengerWeapons(2)=(WeaponPawnClass=class'DH_Vehicles.DH_Sdkfz234PassengerTwo',WeaponBone="body")
    PassengerWeapons(3)=(WeaponPawnClass=class'DH_Vehicles.DH_Sdkfz234PassengerThree',WeaponBone="body")
    PassengerWeapons(4)=(WeaponPawnClass=class'DH_Vehicles.DH_Sdkfz234PassengerFour',WeaponBone="body")
    IdleSound=SoundGroup'Vehicle_Engines.sdkfz251.sdkfz251_engine_loop'
    StartUpSound=sound'Vehicle_Engines.sdkfz251.sdkfz251_engine_start'
    ShutDownSound=sound'Vehicle_Engines.sdkfz251.sdkfz251_engine_stop'
    DestroyedVehicleMesh=StaticMesh'DH_German_vehicles_stc3.Puma.Puma_dest'
    DisintegrationHealth=-100000.0
    DamagedEffectScale=0.8
    DamagedEffectOffset=(X=-150.0,Y=0.0,Z=65.0)
    SteeringScaleFactor=4.0
    BeginningIdleAnim="driver_hatch_idle_close"
    DriverPositions(0)=(PositionMesh=SkeletalMesh'DH_Sdkfz234ArmoredCar_anm.Sdkfz234_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=2730,ViewPitchDownLimit=60065,ViewPositiveYawLimit=9500,ViewNegativeYawLimit=-9500,ViewFOV=90.0)
    DriverPositions(1)=(PositionMesh=SkeletalMesh'DH_Sdkfz234ArmoredCar_anm.Sdkfz234_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VBA64_driver_close",ViewPitchUpLimit=2730,ViewPitchDownLimit=60065,ViewPositiveYawLimit=15000,ViewNegativeYawLimit=-15000,ViewFOV=90.0)
    DriverPositions(2)=(PositionMesh=SkeletalMesh'DH_Sdkfz234ArmoredCar_anm.Sdkfz234_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VBA64_driver_open",ViewPitchUpLimit=9500,ViewPitchDownLimit=62835,ViewPositiveYawLimit=15000,ViewNegativeYawLimit=-15000,bExposed=true,ViewFOV=90.0)
    VehicleHudImage=texture'DH_InterfaceArt_tex.Tank_Hud.234_body'
    VehicleHudOccupantsX(0)=0.48
    VehicleHudOccupantsY(0)=0.32
    VehicleHudOccupantsX(1)=0.5
    VehicleHudOccupantsY(1)=0.43
    VehicleHudOccupantsX(2)=0.4
    VehicleHudOccupantsY(2)=0.75
    VehicleHudOccupantsX(3)=0.5
    VehicleHudOccupantsY(3)=0.6
    VehicleHudOccupantsX(4)=0.6
    VehicleHudOccupantsY(4)=0.75
    VehicleHudOccupantsX(5)=0.5
    VehicleHudOccupantsY(5)=0.8
    VehicleHudEngineX=0.51
    VehHitpoints(0)=(PointOffset=(X=5.0,Z=-5.0),bPenetrationPoint=false)
    VehHitpoints(1)=(PointOffset=(X=-150.0,Z=52.0),DamageMultiplier=1.0)
    VehHitpoints(2)=(PointRadius=15.0,PointScale=1.0,PointBone="body",PointOffset=(X=30.0,Y=-30.0,Z=52.0),DamageMultiplier=3.0,HitPointType=HP_AmmoStore)
    EngineHealth=100
    bIsApc=true
    DriverAttachmentBone="driver_attachment"
    Wheels(0)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.RFWheel'
    Wheels(1)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.LFWheel'
    Wheels(2)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.MFRWheel'
    Wheels(3)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.MFLWheel'
    Wheels(4)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.MRRWheel'
    Wheels(5)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.MRLWheel'
    Wheels(6)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.RRWheel'
    Wheels(7)=SVehicleWheel'DH_Vehicles.DH_Sdkfz2341ArmoredCar.RLWheel'
    VehicleMass=5.0
    DrivePos=(X=4.0,Y=-2.0,Z=0.0)
    DriveAnim="VBA64_driver_idle_close"
    ExitPositions(0)=(X=-92.0,Y=4.0,Z=150.0)
    ExitPositions(1)=(X=-92.0,Y=4.0,Z=150.0)
    ExitPositions(2)=(X=-160.0,Y=-120.0,Z=35.0)
    ExitPositions(3)=(X=-300.0,Y=0.0,Z=35.0)
    ExitPositions(4)=(X=-160.0,Y=120.0,Z=35.0)
    ExitPositions(5)=(X=-300.0,Y=0.0,Z=35.0)
    EntryRadius=375.0
    FPCamPos=(X=42.0,Y=-18.0,Z=33.0)
    DriverDamageMult=1.0
    VehicleNameString="Sdkfz 234/2 Armored Car"
    MaxDesireability=0.1
    HUDOverlayOffset=(X=2.0)
    HUDOverlayFOV=90.0
    PitchUpLimit=500
    PitchDownLimit=58000
    Mesh=SkeletalMesh'DH_Sdkfz234ArmoredCar_anm.Sdkfz234_body_ext'
    Skins(0)=texture'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_body_dunk'
    Skins(1)=texture'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_wheels_dunk'
    Skins(2)=texture'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_extras_dunk'
    Skins(3)=texture'DH_VehiclesGE_tex6.ext_vehicles.sdkfz2341_accessories'
    Skins(4)=texture'DH_VehiclesGE_tex6.int_vehicles.sdkfz2341_body_int'
    SoundRadius=800.0
    TransientSoundRadius=1500.0
    CollisionRadius=175.0
    CollisionHeight=60.0
    KParams=KarmaParamsRBFull'DH_Vehicles.DH_Sdkfz2341ArmoredCar.KParams0'
    HighDetailOverlayIndex=4
}
