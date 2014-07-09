//===================================================================
// TigerMountedMGPawn
//
// Copyright (C) 2005 John "Ramm-Jaeger"  Gibson
//
// Tiger I Ausf. E bow mounted machine gun pawn
//===================================================================
class DH_TigerMountedMGPawn extends DH_ROMountedTankMGPawn;

defaultproperties
{
     OverlayCenterSize=0.700000
     MGOverlay=Texture'DH_VehicleOptics_tex.German.KZF2_MGSight'
     WeaponFov=41.000000
     GunClass=Class'DH_Vehicles.DH_TigerMountedMG'
     bHasAltFire=False
     CameraBone="mg_yaw"
     bDrawDriverInTP=False
     DrivePos=(Z=130.000000)
     ExitPositions(0)=(X=120.000000,Y=200.000000,Z=100.000000)
     ExitPositions(1)=(X=120.000000,Y=-200.000000,Z=100.000000)
     EntryRadius=130.000000
     FPCamViewOffset=(X=10.000000,Y=-5.000000,Z=1.000000)
     TPCamDistance=300.000000
     TPCamLookat=(X=-25.000000,Z=0.000000)
     TPCamWorldOffset=(Z=120.000000)
     VehiclePositionString="in a Panzer VI Ausf.E Mounted MG"
     VehicleNameString="Panzer VI Ausf.E Mounted MG"
     PitchUpLimit=3640
     PitchDownLimit=63715
}
