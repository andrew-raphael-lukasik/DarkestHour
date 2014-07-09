//==============================================================================
// DH_ShermanTank_M4A3105
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// American M4A3(105) - 105mm Howitzer
//==============================================================================
class DH_ShermanTank_M4A3105 extends DH_ROTreadCraftB;

#exec OBJ LOAD FILE=..\Animations\DH_ShermanM4A3E2_anm.ukx
#exec OBJ LOAD FILE=..\textures\DH_VehiclesUS_tex.utx
#exec OBJ LOAD FILE=..\textures\DH_VehiclesUS_tex3.utx
#exec OBJ LOAD FILE=..\StaticMeshes\DH_allies_vehicles_stc3.usx

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

static function StaticPrecache(LevelInfo L)
{
    	Super.StaticPrecache(L);

    	L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex3.ext_vehicles.ShermanM4A3_body_ext');
    	L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex3.ext_vehicles.ShermanM4A3E2_wheels');
    	L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.Sherman_hatch_int');
    	L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.Sherman_body_int');
    	L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.Treads.Sherman_treads');
}

simulated function UpdatePrecacheMaterials()
{
    	Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex3.ext_vehicles.ShermanM4A3_body_ext');
    	Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex3.ext_vehicles.ShermanM4A3E2_wheels');
    	Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.Sherman_hatch_int');
    	Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.Sherman_body_int');
    	Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.Treads.Sherman_treads');

	Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     LeftTreadIndex=5
     RightTreadIndex=4
     MaxCriticalSpeed=693.000000
     AmmoIgnitionProbability=0.500000
     TreadDamageThreshold=0.750000
     FireAttachBone="Player_Driver"
     UFrontArmorFactor=6.400000
     URightArmorFactor=3.800000
     ULeftArmorFactor=3.800000
     URearArmorFactor=3.800000
     UFrontArmorSlope=47.000000
     URearArmorSlope=10.000000
     PointValue=3.000000
     MaxPitchSpeed=150.000000
     TreadVelocityScale=110.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L03'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R03'
     RumbleSound=Sound'DH_AlliedVehicleSounds.Sherman.inside_rumble01'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="Turret_placement"
     VehicleHudTurret=TexRotator'DH_InterfaceArt_tex.Tank_Hud.Sherman_turret_rot'
     VehicleHudTurretLook=TexRotator'DH_InterfaceArt_tex.Tank_Hud.Sherman_turret_look'
     VehicleHudThreadsPosY=0.510000
     VehicleHudThreadsScale=0.720000
     LeftWheelBones(0)="Wheel_L_1"
     LeftWheelBones(1)="Wheel_L_2"
     LeftWheelBones(2)="Wheel_L_3"
     LeftWheelBones(3)="Wheel_L_4"
     LeftWheelBones(4)="Wheel_L_5"
     LeftWheelBones(5)="Wheel_L_6"
     LeftWheelBones(6)="Wheel_L_7"
     LeftWheelBones(7)="Wheel_L_8"
     LeftWheelBones(8)="Wheel_L_9"
     LeftWheelBones(9)="Wheel_L_10"
     LeftWheelBones(10)="Wheel_L_11"
     RightWheelBones(0)="Wheel_R_1"
     RightWheelBones(1)="Wheel_R_2"
     RightWheelBones(2)="Wheel_R_3"
     RightWheelBones(3)="Wheel_R_4"
     RightWheelBones(4)="Wheel_R_5"
     RightWheelBones(5)="Wheel_R_6"
     RightWheelBones(6)="Wheel_R_7"
     RightWheelBones(7)="Wheel_R_8"
     RightWheelBones(8)="Wheel_R_9"
     RightWheelBones(9)="Wheel_R_10"
     RightWheelBones(10)="Wheel_R_11"
     WheelRotationScale=2200
     TreadHitMinAngle=1.300000
     FrontLeftAngle=335.000000
     FrontRightAngle=25.000000
     RearRightAngle=155.000000
     RearLeftAngle=205.000000
     GearRatios(4)=0.720000
     TransRatio=0.100000
     SteerSpeed=75.000000
     SteerBoneName="Steering"
     LeftLeverBoneName="lever_L"
     LeftLeverAxis=AXIS_Z
     RightLeverBoneName="lever_R"
     RightLeverAxis=AXIS_Z
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-116.000000,Z=35.000000),ExhaustRotation=(Pitch=31000,Yaw=-16384))
     PassengerWeapons(0)=(WeaponPawnClass=Class'DH_Vehicles.DH_ShermanCannonPawn_M4A3105',WeaponBone="Turret_placement")
     PassengerWeapons(1)=(WeaponPawnClass=Class'DH_Vehicles.DH_ShermanMountedMGPawn_M4A176W',WeaponBone="Mg_placement")
     PassengerWeapons(2)=(WeaponPawnClass=Class'DH_Vehicles.DH_ShermanJumboPassengerOne',WeaponBone="Passenger_1")
     PassengerWeapons(3)=(WeaponPawnClass=Class'DH_Vehicles.DH_ShermanJumboPassengerTwo',WeaponBone="passenger_2")
     PassengerWeapons(4)=(WeaponPawnClass=Class'DH_Vehicles.DH_ShermanJumboPassengerThree',WeaponBone="passenger_3")
     PassengerWeapons(5)=(WeaponPawnClass=Class'DH_Vehicles.DH_ShermanJumboPassengerFour',WeaponBone="passenger_4")
     IdleSound=SoundGroup'DH_AlliedVehicleSounds.Sherman.ShermanEngineLoop'
     StartUpSound=Sound'DH_AlliedVehicleSounds.Sherman.ShermanStart'
     ShutDownSound=Sound'DH_AlliedVehicleSounds.Sherman.ShermanStop'
     DestroyedVehicleMesh=StaticMesh'DH_allies_vehicles_stc3.ShermanM4A3.M4A3_105dest'
     DamagedEffectScale=0.900000
     DamagedEffectOffset=(X=-113.000000,Y=20.000000,Z=79.000000)
     VehicleTeam=1
     SteeringScaleFactor=0.750000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'DH_ShermanM4A3E2_anm.M4A3_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,ViewPositiveYawLimit=5500,ViewNegativeYawLimit=-5500,ViewFOV=80.000000,bDrawOverlays=True)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'DH_ShermanM4A3E2_anm.M4A3_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VPanzer4_driver_close",ViewPitchUpLimit=3000,ViewPitchDownLimit=61922,ViewPositiveYawLimit=8000,ViewNegativeYawLimit=-8000,ViewFOV=80.000000)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'DH_ShermanM4A3E2_anm.M4A3_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VPanzer4_driver_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=62000,ViewPositiveYawLimit=16000,ViewNegativeYawLimit=-16000,bExposed=True,ViewFOV=80.000000)
     VehicleHudImage=Texture'DH_InterfaceArt_tex.Tank_Hud.Sherman_body'
     VehicleHudOccupantsX(0)=0.430000
     VehicleHudOccupantsX(2)=0.560000
     VehicleHudEngineX=0.510000
     VehHitpoints(0)=(PointBone="Player_Driver",PointOffset=(Y=-1.000000,Z=-5.000000),bPenetrationPoint=False)
     VehHitpoints(1)=(PointRadius=30.000000,PointOffset=(X=-90.000000,Z=6.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=20.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=-15.000000,Y=25.000000,Z=20.000000),DamageMultiplier=3.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(3)=(PointRadius=20.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=-15.000000,Y=-25.000000,Z=20.000000),DamageMultiplier=3.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(4)=(PointRadius=25.000000,PointScale=1.000000,PointBone="body",PointOffset=(Z=15.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=20.000000,Z=17.000000)
         WheelRadius=36.000000
     End Object
     Wheels(0)=SVehicleWheel'DH_Vehicles.DH_ShermanTank_M4A3105.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=True
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=20.000000,Z=17.000000)
         WheelRadius=36.000000
     End Object
     Wheels(1)=SVehicleWheel'DH_Vehicles.DH_ShermanTank_M4A3105.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-30.000000,Z=17.000000)
         WheelRadius=37.000000
     End Object
     Wheels(2)=SVehicleWheel'DH_Vehicles.DH_ShermanTank_M4A3105.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=True
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-30.000000,Z=17.000000)
         WheelRadius=37.000000
     End Object
     Wheels(3)=SVehicleWheel'DH_Vehicles.DH_ShermanTank_M4A3105.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=17.000000)
         WheelRadius=36.000000
     End Object
     Wheels(4)=SVehicleWheel'DH_Vehicles.DH_ShermanTank_M4A3105.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=True
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=17.000000)
         WheelRadius=36.000000
     End Object
     Wheels(5)=SVehicleWheel'DH_Vehicles.DH_ShermanTank_M4A3105.Right_Drive_Wheel'

     VehicleMass=13.000000
     bFPNoZFromCameraPitch=True
     DrivePos=(X=3.000000,Y=0.000000,Z=7.000000)
     ExitPositions(0)=(X=100.000000,Y=-100.000000,Z=156.000000)
     ExitPositions(1)=(X=100.000000,Y=100.000000,Z=156.000000)
     EntryRadius=375.000000
     FPCamPos=(X=120.000000,Y=-21.000000,Z=17.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in a M4A3(105)Sherman"
     VehicleNameString="M4A3(105) Sherman"
     MaxDesireability=1.900000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayOffset=(X=5.000000)
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=575.000000
     Health=575
     Mesh=SkeletalMesh'DH_ShermanM4A3E2_anm.M4A3_body_ext'
     Skins(0)=Texture'DH_VehiclesUS_tex3.ext_vehicles.ShermanM4A3_body_ext'
     Skins(1)=Texture'DH_VehiclesUS_tex3.ext_vehicles.ShermanM4A3E2_wheels'
     Skins(2)=Texture'DH_VehiclesUS_tex.int_vehicles.Sherman_hatch_int'
     Skins(3)=Texture'DH_VehiclesUS_tex.int_vehicles.Sherman_body_int'
     Skins(4)=Texture'DH_VehiclesUS_tex.Treads.Sherman_treads'
     Skins(5)=Texture'DH_VehiclesUS_tex.Treads.Sherman_treads'
     SoundRadius=800.000000
     TransientSoundRadius=1500.000000
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     Begin Object Class=KarmaParamsRBFull Name=KParams0
         KInertiaTensor(0)=1.000000
         KInertiaTensor(3)=3.000000
         KInertiaTensor(5)=3.000000
         KLinearDamping=0.050000
         KAngularDamping=0.050000
         KStartEnabled=True
         bKNonSphericalInertia=True
         KMaxAngularSpeed=0.900000
         bHighDetailOnly=False
         bClientOnly=False
         bKDoubleTickRate=True
         bDestroyOnWorldPenetrate=True
         bDoSafetime=True
         KFriction=0.500000
         KImpactThreshold=700.000000
     End Object
     KParams=KarmaParamsRBFull'DH_Vehicles.DH_ShermanTank_M4A3105.KParams0'

}
