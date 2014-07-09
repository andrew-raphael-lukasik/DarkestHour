//=============================================================================
// DH_M1GarandWeapon
//=============================================================================

class DH_M1GarandWeapon extends DH_SemiAutoWeapon;

#exec OBJ LOAD FILE=..\DarkestHour\Animations\DH_Garand_1st.ukx

var	Bool	bIsLastRound;

//overwritten to support garand last round clip eject for Client only
simulated function Fire(float F)
{
	super.Fire(F);

    if(AmmoAmount(0)==1)
		bIsLastRound=true;
	else
		bIsLastRound=false;
}

//overwritten to support garand last round clip eject for Server only
simulated function bool WasLastRound()
{
    if(AmmoAmount(0)==0)
		return true;

	return false;
}

simulated function BringUp(optional Weapon PrevWeapon)
{
	super.BringUp(PrevWeapon);

	if(Instigator != none && Instigator.Controller != none && DHPlayer(Instigator.Controller) != none)
		DHPlayer(Instigator.Controller).QueueHint(4, true);
}

// Do the actual ammo swapping
function PerformReload()
{
	local int CurrentMagLoad;
//	local bool bDidPlusOneReload;

    CurrentMagLoad = AmmoAmount(0);

	if( PrimaryAmmoArray.Length == 0 )
	{
		return;
	}

	if ( CurrentMagLoad < FireMode[0].AmmoClass.Default.InitialAmount )
	{
		PrimaryAmmoArray.Remove(CurrentMagIndex, 1);
	}
	else
	{
		PrimaryAmmoArray[CurrentMagIndex] = CurrentMagLoad;
		AmmoCharge[0] = 0;
	}

	if( PrimaryAmmoArray.Length == 0 )
	{
		return;
	}

	CurrentMagIndex++;

	if ( CurrentMagIndex > PrimaryAmmoArray.Length - 1)
	{
		CurrentMagIndex = 0;
	}

	AddAmmo(PrimaryAmmoArray[CurrentMagIndex], 0);

	if( Instigator.IsHumanControlled() )
	{
		if( AmmoStatus(0) > 0.5 )
		{
			PlayerController(Instigator.Controller).ReceiveLocalizedMessage( class'ROAmmoWeightMessage',0);
		}
		else if(  AmmoStatus(0) > 0.2 )
		{
			PlayerController(Instigator.Controller).ReceiveLocalizedMessage( class'ROAmmoWeightMessage',1);
		}
		else
		{
			PlayerController(Instigator.Controller).ReceiveLocalizedMessage( class'ROAmmoWeightMessage',2);
		}
	}

	if( AmmoAmount(0) > 0 )
	{
		if( DHWeaponAttachment(ThirdPersonActor) != none )
		{
			DHWeaponAttachment(ThirdPersonActor).bOutOfAmmo = false;
		}
	}

	ClientForceAmmoUpdate(0, AmmoAmount(0));

	CurrentMagCount = PrimaryAmmoArray.Length - 1;
}

defaultproperties
{
     MagEmptyReloadAnim="reload_empty"
     MagPartialReloadAnim="reload_half"
     IronIdleAnim="Iron_idle"
     IronBringUp="iron_in"
     IronPutDown="iron_out"
     BayoAttachAnim="Bayonet_on"
     BayoDetachAnim="Bayonet_off"
     BayonetBoneName="bayonet"
     bHasBayonet=True
     IdleEmptyAnim="idle_empty"
     IronIdleEmptyAnim="iron_idle_empty"
     MaxNumPrimaryMags=11
     InitialNumPrimaryMags=11
     CrawlForwardAnim="crawlF"
     CrawlBackwardAnim="crawlB"
     CrawlStartAnim="crawl_in"
     CrawlEndAnim="crawl_out"
     IronSightDisplayFOV=20.000000
     ZoomInTime=0.400000
     ZoomOutTime=0.200000
     FreeAimRotationSpeed=7.500000
     FireModeClass(0)=Class'DH_Weapons.DH_M1GarandFire'
     FireModeClass(1)=Class'DH_Weapons.DH_M1GarandMeleeFire'
     SelectAnim="Draw"
     PutDownAnim="putaway"
     SelectAnimRate=1.000000
     PutDownAnimRate=1.000000
     SelectForce="SwitchToAssaultRifle"
     AIRating=0.400000
     CurrentRating=0.400000
     bSniping=True
     DisplayFOV=70.000000
     bCanRestDeploy=True
     PickupClass=Class'DH_Weapons.DH_M1GarandPickup'
     BobDamping=1.600000
     AttachmentClass=Class'DH_Weapons.DH_M1GarandAttachment'
     ItemName="M1 Garand"
     Mesh=SkeletalMesh'DH_Garand_1st.M1_Garand'
}
