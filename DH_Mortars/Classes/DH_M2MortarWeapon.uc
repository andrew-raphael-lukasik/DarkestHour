class DH_M2MortarWeapon extends DH_MortarWeapon;

#exec OBJ LOAD FILE=..\Animations\DH_Mortars_1st.ukx

defaultproperties
{
     DeployAnimation="Deploy"
     VehicleClass=Class'DH_Mortars.DH_M2MortarVehicle'
     HighExplosiveMaximum=20
     HighExplosiveResupplyCount=5
     SmokeMaximum=4
     SmokeResupplyCount=1
     SelectAnim="Draw"
     PutDownAnim="putaway"
     PlayerViewOffset=(Z=-2.000000)
     AttachmentClass=Class'DH_Mortars.DH_M2MortarAttachment'
     ItemName="60mm Mortar M2"
     Mesh=SkeletalMesh'DH_Mortars_1st.M2_Mortar1st'
}
