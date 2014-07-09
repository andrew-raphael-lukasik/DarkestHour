//=============================================================================
// DH_FlareWeapon
//=============================================================================
// Weapon class for the German MP40 sub machinegun
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibson
//=============================================================================
class DH_FlareWeapon extends DH_AutoWeapon;

#exec OBJ LOAD FILE=..\Animations\Axis_Mp40_1st.ukx

defaultproperties
{
     MagEmptyReloadAnim="reload_empty"
     MagPartialReloadAnim="reload_half"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronPutDown="iron_out"
     MaxNumPrimaryMags=7
     InitialNumPrimaryMags=7
     bPlusOneLoading=True
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=35.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.150000
     FireModeClass(0)=Class'DH_Weapons.DH_FlareFire'
     FireModeClass(1)=Class'DH_Weapons.DH_MP40MeleeFire'
     SelectAnim="Draw"
     PutDownAnim="Put_away"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.700000
     CurrentRating=0.700000
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'DH_Weapons.DH_FlarePickup'
     BobDamping=1.600000
     AttachmentClass=Class'DH_Weapons.DH_FlareAttachment'
     ItemName="Flare Gun"
     Mesh=SkeletalMesh'Axis_Mp40_1st.mp40-mesh'
     HighDetailOverlay=Shader'Weapons1st_tex.SMG.MP40_s'
     bUseHighDetailOverlayIndex=True
     HighDetailOverlayIndex=2
}
