// class: DH_ModifySupplyVol
// Auther: Theel
// Date: 10-05-10
// Purpose:
// Allows activating and deactivating supply caches so they don't have to be spawn based
// Problems/Limitations:
// Can only modify 1 volume

class DH_ModifySupplyVol extends DH_ModifyActors;

var()	name					SupplyVolumeToModify;
var		ROAmmoResupplyVolume	SupplyVolumeReference;
var()	bool					UseRandomness;
var()	int 					RandomPercent; // 100 for always succeed, 0 for always fail
var() 	StatusModifyType		HowToModify;

function PostBeginPlay()
{
	local ROAmmoResupplyVolume	RORV;

	super.PostBeginPlay();

	if(SupplyVolumeToModify == '')
		return; //end script because volumename was not set

	//Volume are static so use the all actor list
	foreach AllActors(class'ROAmmoResupplyVolume', RORV, SupplyVolumeToModify)
	{
		SupplyVolumeReference = RORV;
		break;
	}
}

event Trigger(Actor Other, Pawn EventInstigator)
{
	local int RandomNum;

	if(UseRandomness)
	{
		RandomNum = Rand(101);  //Gets a random # between 0 & 100
		if(RandomPercent <= RandomNum)
			return; //Leave script as it randomly failed
	}
	switch(HowToModify)
	{
		case SMT_Activate:
			SupplyVolumeReference.bActive = true;
		break;
		case SMT_Deactivate:
			SupplyVolumeReference.bActive = false;
		break;
		case SMT_Toggle: //Check volume status and toggle it
			if(SupplyVolumeReference.bActive == true)
				SupplyVolumeReference.bActive = false;
			else
				SupplyVolumeReference.bActive = true;
		break;
		default:
		break;
	}
}

defaultproperties
{
}
