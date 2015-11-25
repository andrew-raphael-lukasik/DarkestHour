//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DHWireCuttersAttachment extends DHWeaponAttachment;

defaultproperties
{
    PA_MovementAnims(0)="stand_jogF_nade"
    PA_MovementAnims(1)="stand_jogB_nade"
    PA_MovementAnims(2)="stand_jogL_nade"
    PA_MovementAnims(3)="stand_jogR_nade"
    PA_MovementAnims(4)="stand_jogFL_nade"
    PA_MovementAnims(5)="stand_jogFR_nade"
    PA_MovementAnims(6)="stand_jogBL_nade"
    PA_MovementAnims(7)="stand_jogBR_nade"
    PA_CrouchAnims(0)="crouch_walkF_nade"
    PA_CrouchAnims(1)="crouch_walkB_nade"
    PA_CrouchAnims(2)="crouch_walkL_nade"
    PA_CrouchAnims(3)="crouch_walkR_nade"
    PA_CrouchAnims(4)="crouch_walkFL_nade"
    PA_CrouchAnims(5)="crouch_walkFR_nade"
    PA_CrouchAnims(6)="crouch_walkBL_nade"
    PA_CrouchAnims(7)="crouch_walkBR_nade"
    PA_ProneAnims(0)="prone_crawlF_nade"
    PA_ProneAnims(1)="prone_crawlB_nade"
    PA_ProneAnims(2)="prone_crawlL_nade"
    PA_ProneAnims(3)="prone_crawlR_nade"
    PA_ProneAnims(4)="prone_crawlFL_nade"
    PA_ProneAnims(5)="prone_crawlFR_nade"
    PA_ProneAnims(6)="prone_crawlBL_nade"
    PA_ProneAnims(7)="prone_crawlBR_nade"
    PA_ProneIronAnims(0)="prone_slowcrawlF_nade"
    PA_ProneIronAnims(1)="prone_slowcrawlB_nade"
    PA_ProneIronAnims(2)="prone_slowcrawlL_nade"
    PA_ProneIronAnims(3)="prone_slowcrawlR_nade"
    PA_ProneIronAnims(4)="prone_slowcrawlL_nade"
    PA_ProneIronAnims(5)="prone_slowcrawlR_nade"
    PA_ProneIronAnims(6)="prone_slowcrawlB_nade"
    PA_ProneIronAnims(7)="prone_slowcrawlB_nade"
    PA_WalkAnims(0)="stand_walkFhip_nade"
    PA_WalkAnims(1)="stand_walkBhip_nade"
    PA_WalkAnims(2)="stand_walkLhip_nade"
    PA_WalkAnims(3)="stand_walkRhip_nade"
    PA_WalkAnims(4)="stand_walkFLhip_nade"
    PA_WalkAnims(5)="stand_walkFRhip_nade"
    PA_WalkAnims(6)="stand_walkBLhip_nade"
    PA_WalkAnims(7)="stand_walkBRhip_nade"
    PA_WalkIronAnims(0)="stand_walkFiron_nade"
    PA_WalkIronAnims(1)="stand_walkBiron_nade"
    PA_WalkIronAnims(2)="stand_walkLiron_nade"
    PA_WalkIronAnims(3)="stand_walkRiron_nade"
    PA_WalkIronAnims(4)="stand_walkFLiron_nade"
    PA_WalkIronAnims(5)="stand_walkFRiron_nade"
    PA_WalkIronAnims(6)="stand_walkBLiron_nade"
    PA_WalkIronAnims(7)="stand_walkBRiron_nade"
    PA_SprintAnims(0)="stand_sprintF_nade"
    PA_SprintAnims(1)="stand_sprintB_nade"
    PA_SprintAnims(2)="stand_sprintL_nade"
    PA_SprintAnims(3)="stand_sprintR_nade"
    PA_SprintAnims(4)="stand_sprintFL_nade"
    PA_SprintAnims(5)="stand_sprintFR_nade"
    PA_SprintAnims(6)="stand_sprintBL_nade"
    PA_SprintAnims(7)="stand_sprintBR_nade"
    PA_SprintCrouchAnims(0)="crouch_sprintF_nade"
    PA_SprintCrouchAnims(1)="crouch_sprintB_nade"
    PA_SprintCrouchAnims(2)="crouch_sprintL_nade"
    PA_SprintCrouchAnims(3)="crouch_sprintR_nade"
    PA_SprintCrouchAnims(4)="crouch_sprintFL_nade"
    PA_SprintCrouchAnims(5)="crouch_sprintFR_nade"
    PA_SprintCrouchAnims(6)="crouch_sprintBL_nade"
    PA_SprintCrouchAnims(7)="crouch_sprintBR_nade"
    PA_LimpAnims(0)="stand_limpFhip_nade"
    PA_LimpAnims(1)="stand_limpBhip_nade"
    PA_LimpAnims(2)="stand_limpLhip_nade"
    PA_LimpAnims(3)="stand_limpRhip_nade"
    PA_LimpAnims(4)="stand_limpFLhip_nade"
    PA_LimpAnims(5)="stand_limpFRhip_nade"
    PA_LimpAnims(6)="stand_limpBLhip_nade"
    PA_LimpAnims(7)="stand_limpBRhip_nade"
    PA_LimpIronAnims(0)="stand_limpFiron_nade"
    PA_LimpIronAnims(1)="stand_limpBiron_nade"
    PA_LimpIronAnims(2)="stand_limpLiron_nade"
    PA_LimpIronAnims(3)="stand_limpRiron_nade"
    PA_LimpIronAnims(4)="stand_limpFLiron_nade"
    PA_LimpIronAnims(5)="stand_limpFRiron_nade"
    PA_LimpIronAnims(6)="stand_limpBLiron_nade"
    PA_LimpIronAnims(7)="stand_limpBRiron_nade"
    PA_MoveHoldExplosive(0)="stand_jogFhold_nade"
    PA_MoveHoldExplosive(1)="stand_jogBhold_nade"
    PA_MoveHoldExplosive(2)="stand_jogLhold_nade"
    PA_MoveHoldExplosive(3)="stand_jogRhold_nade"
    PA_MoveHoldExplosive(4)="stand_jogFLhold_nade"
    PA_MoveHoldExplosive(5)="stand_jogFRhold_nade"
    PA_MoveHoldExplosive(6)="stand_jogBLhold_nade"
    PA_MoveHoldExplosive(7)="stand_jogBRhold_nade"
    PA_WalkHoldExplosive(0)="stand_walkFhold_nade"
    PA_WalkHoldExplosive(1)="stand_walkBhold_nade"
    PA_WalkHoldExplosive(2)="stand_walkLhold_nade"
    PA_WalkHoldExplosive(3)="stand_walkRhold_nade"
    PA_WalkHoldExplosive(4)="stand_walkFLhold_nade"
    PA_WalkHoldExplosive(5)="stand_walkFRhold_nade"
    PA_WalkHoldExplosive(6)="stand_walkBLhold_nade"
    PA_WalkHoldExplosive(7)="stand_walkBRhold_nade"
    PA_CrouchHoldExplosive(0)="crouch_walkFhold_nade"
    PA_CrouchHoldExplosive(1)="crouch_walkBhold_nade"
    PA_CrouchHoldExplosive(2)="crouch_walkLhold_nade"
    PA_CrouchHoldExplosive(3)="crouch_walkRhold_nade"
    PA_CrouchHoldExplosive(4)="crouch_walkFLhold_nade"
    PA_CrouchHoldExplosive(5)="crouch_walkFRhold_nade"
    PA_CrouchHoldExplosive(6)="crouch_walkBLhold_nade"
    PA_CrouchHoldExplosive(7)="crouch_walkBRhold_nade"
    PA_SprintHoldExplosive(0)="stand_sprintFhold_nade"
    PA_SprintHoldExplosive(1)="stand_sprintBhold_nade"
    PA_SprintHoldExplosive(2)="stand_sprintLhold_nade"
    PA_SprintHoldExplosive(3)="stand_sprintRhold_nade"
    PA_SprintHoldExplosive(4)="stand_sprintFLhold_nade"
    PA_SprintHoldExplosive(5)="stand_sprintFRhold_nade"
    PA_SprintHoldExplosive(6)="stand_sprintBLhold_nade"
    PA_SprintHoldExplosive(7)="stand_sprintBRhold_nade"
    PA_SprintCrouchHoldExplosive(0)="crouch_sprintFhold_nade"
    PA_SprintCrouchHoldExplosive(1)="crouch_sprintBhold_nade"
    PA_SprintCrouchHoldExplosive(2)="crouch_sprintLhold_nade"
    PA_SprintCrouchHoldExplosive(3)="crouch_sprintRhold_nade"
    PA_SprintCrouchHoldExplosive(4)="crouch_sprintFLhold_nade"
    PA_SprintCrouchHoldExplosive(5)="crouch_sprintFRhold_nade"
    PA_SprintCrouchHoldExplosive(6)="crouch_sprintBLhold_nade"
    PA_SprintCrouchHoldExplosive(7)="crouch_sprintBRhold_nade"
    PA_ProneHoldExplosive(0)="prone_slowcrawlF_nade"
    PA_ProneHoldExplosive(1)="prone_slowcrawlB_nade"
    PA_ProneHoldExplosive(2)="prone_slowcrawlL_nade"
    PA_ProneHoldExplosive(3)="prone_slowcrawlR_nade"
    PA_ProneHoldExplosive(4)="prone_slowcrawlF_nade"
    PA_ProneHoldExplosive(5)="prone_slowcrawlF_nade"
    PA_ProneHoldExplosive(6)="prone_slowcrawlB_nade"
    PA_ProneHoldExplosive(7)="prone_slowcrawlB_nade"
    PA_IdleExplosiveHold="stand_hold_nade"
    PA_IdleCrouchExplosiveHold="crouch_hold_nade"
    PA_IdleProneExplosiveHold="prone_hold_nade"
    PA_TurnRightAnim="stand_turnRhip_binoc"
    PA_TurnLeftAnim="stand_turnLhip_binoc"
    PA_TurnIronRightAnim="stand_turnRiron_nade"
    PA_TurnIronLeftAnim="stand_turnLiron_nade"
    PA_ProneTurnRightAnim="prone_turnR_nade"
    PA_ProneTurnLeftAnim="prone_turnL_nade"
    PA_StandToProneAnim="StandtoProne_nade"
    PA_CrouchToProneAnim="CrouchtoProne_nade"
    PA_ProneToStandAnim="PronetoStand_nade"
    PA_ProneToCrouchAnim="PronetoCrouch_nade"
    PA_DiveToProneStartAnim="prone_diveF_nade"
    PA_DiveToProneEndAnim="prone_diveend_nade"
    PA_CrouchTurnRightAnim="crouch_turnR_nade"
    PA_CrouchTurnLeftAnim="crouch_turnL_nade"
    PA_CrouchIdleRestAnim="crouch_idle_nade"
    PA_IdleCrouchAnim="crouch_idle_nade"
    PA_IdleRestAnim="stand_idlehip_nade"
    PA_IdleWeaponAnim="stand_idlehip_nade"
    PA_IdleIronRestAnim="stand_idleiron_nade"
    PA_IdleIronWeaponAnim="stand_idleiron_nade"
    PA_IdleProneAnim="prone_idle_nade"
    PA_ReloadAnim=""
    PA_ProneReloadAnim=""
    PA_ProneIdleRestAnim="prone_idle_nade"
    PA_Fire="stand_throw_nade"
    PA_IronFire="stand_shootiron_nade"
    PA_CrouchFire="crouch_throw_nade"
    PA_ProneFire="prone_throw_nade"
    PA_MoveStandFire(0)="stand_throw_nade"
    PA_MoveStandFire(1)="stand_throw_nade"
    PA_MoveStandFire(2)="stand_throw_nade"
    PA_MoveStandFire(3)="stand_throw_nade"
    PA_MoveStandFire(4)="stand_throw_nade"
    PA_MoveStandFire(5)="stand_throw_nade"
    PA_MoveStandFire(6)="stand_throw_nade"
    PA_MoveStandFire(7)="stand_throw_nade"
    PA_MoveCrouchFire(0)="crouch_throw_nade"
    PA_MoveCrouchFire(1)="crouch_throw_nade"
    PA_MoveCrouchFire(2)="crouch_throw_nade"
    PA_MoveCrouchFire(3)="crouch_throw_nade"
    PA_MoveCrouchFire(4)="crouch_throw_nade"
    PA_MoveCrouchFire(5)="crouch_throw_nade"
    PA_MoveCrouchFire(6)="crouch_throw_nade"
    PA_MoveCrouchFire(7)="crouch_throw_nade"
    PA_MoveWalkFire(0)="stand_shootFwalk_nade"
    PA_MoveWalkFire(1)="stand_shootFwalk_nade"
    PA_MoveWalkFire(2)="stand_shootLRwalk_nade"
    PA_MoveWalkFire(3)="stand_shootLRwalk_nade"
    PA_MoveWalkFire(4)="stand_shootFLwalk_nade"
    PA_MoveWalkFire(5)="stand_shootFRwalk_nade"
    PA_MoveWalkFire(6)="stand_shootFRwalk_nade"
    PA_MoveWalkFire(7)="stand_shootFLwalk_nade"
    PA_MoveStandIronFire(0)="stand_shootiron_nade"
    PA_MoveStandIronFire(1)="stand_shootiron_nade"
    PA_MoveStandIronFire(2)="stand_shootLRiron_nade"
    PA_MoveStandIronFire(3)="stand_shootLRiron_nade"
    PA_MoveStandIronFire(4)="stand_shootFLiron_nade"
    PA_MoveStandIronFire(5)="stand_shootFRiron_nade"
    PA_MoveStandIronFire(6)="stand_shootFRiron_nade"
    PA_MoveStandIronFire(7)="stand_shootFLiron_nade"
    PA_FireLastShot="stand_shoothip_nade"
    PA_IronFireLastShot="stand_shootiron_nade"
    PA_CrouchFireLastShot="crouch_shoot_nade"
    PA_ProneFireLastShot="prone_shoot_nade"
    PA_HitFAnim="hitF_pistol"
    PA_HitBAnim="hitB_pistol"
    PA_HitLAnim="hitL_pistol"
    PA_HitRAnim="hitR_pistol"
    PA_HitLLegAnim="hitL_leg_pistol"
    PA_HitRLegAnim="hitR_leg_pistol"
    PA_AirStillAnim="jump_mid_nade"
    PA_AirAnims(0)="jumpF_mid_nade"
    PA_AirAnims(1)="jumpB_mid_nade"
    PA_AirAnims(2)="jumpL_mid_nade"
    PA_AirAnims(3)="jumpR_mid_nade"
    PA_TakeoffStillAnim="jump_takeoff_nade"
    PA_TakeoffAnims(0)="jumpF_takeoff_nade"
    PA_TakeoffAnims(1)="jumpB_takeoff_nade"
    PA_TakeoffAnims(2)="jumpL_takeoff_nade"
    PA_TakeoffAnims(3)="jumpR_takeoff_nade"
    PA_LandAnims(0)="jumpF_land_nade"
    PA_LandAnims(1)="jumpB_land_nade"
    PA_LandAnims(2)="jumpL_land_nade"
    PA_LandAnims(3)="jumpR_land_nade"
    PA_DodgeAnims(0)="jumpF_mid_nade"
    PA_DodgeAnims(1)="jumpB_mid_nade"
    PA_DodgeAnims(2)="jumpL_mid_nade"
    PA_DodgeAnims(3)="jumpR_mid_nade"
    WA_Idle="idle_wirecutters" // "idle_binocs"
    WA_Fire="cut_wirecutters" // "idle_binocs"
    MenuImage=texture'DH_InterfaceArt_tex.weapon_icons.Drautschere_icon'
    bRapidFire=false
    LightType=LT_None
    LightEffect=LE_None
    Mesh=SkeletalMesh'DH_Wirecutters_3rd.Wirecutters_3rd'
    Skins(0)=texture'DH_Equipment_tex.wirecutter.Wirecutters_3rdP'
}
