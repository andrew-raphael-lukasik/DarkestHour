//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DH_MP40Weapon extends DHAutoWeapon;

defaultproperties
{
    ItemName="Maschinenpistole 40"
    FireModeClass(0)=class'DH_Weapons.DH_MP40Fire'
    FireModeClass(1)=class'DH_Weapons.DH_MP40MeleeFire'
    AttachmentClass=class'DH_Weapons.DH_MP40Attachment'
    PickupClass=class'DH_Weapons.DH_MP40Pickup'

    Mesh=SkeletalMesh'DH_Mp40_1st.mp40-mesh'
    HighDetailOverlay=shader'Weapons1st_tex.SMG.MP40_s'
    bUseHighDetailOverlayIndex=true
    HighDetailOverlayIndex=2

    PlayerIronsightFOV=65.0
    IronSightDisplayFOV=45.0
    ZoomOutTime=0.15

    MaxNumPrimaryMags=9
    InitialNumPrimaryMags=9

    bPlusOneLoading=false

    IdleEmptyAnim="idle_empty"
    IronIdleEmptyAnim="Iron_idle_empty"
    IronBringUpEmpty="Iron_in_empty"
    IronPutDownEmpty="Iron_out_empty"
    SprintStartEmptyAnim="Sprint_Start_Empty"
    SprintLoopEmptyAnim="Sprint_Middle_Empty"
    SprintEndEmptyAnim="Sprint_End_Empty"
    CrawlForwardEmptyAnim="crawlF_empty"
    CrawlBackwardEmptyAnim="crawlB_empty"
    CrawlStartEmptyAnim="crawl_in_empty"
    CrawlEndEmptyAnim="crawl_out_empty"
    SelectEmptyAnim="Draw_empty"
    PutDownEmptyAnim="put_away_empty"

    InitialBarrels=1
    BarrelClass=class'DH_Weapons.DH_GenericSMGBarrel'
    BarrelSteamBone="Muzzle"
}
