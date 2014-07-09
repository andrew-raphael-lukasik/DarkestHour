// *************************************************************************
//
//	***   WH Officer   ***
//
// *************************************************************************

class DH_WHOfficer extends DH_Heer;

function class<ROHeadgear> GetHeadgear()
{
	if (FRand() < 0.2)
		return Headgear[0];
	else
		return Headgear[1];
}

defaultproperties
{
     bIsArtilleryOfficer=True
     MyName="Artillery Officer"
     AltName="Artillerieoffizier"
     Article="a "
     PluralName="Artillery Officers"
     InfoText="The artillery officer is tasked with directing artillery fire upon the battlefield through the use of long-range observation. Coordinating his efforts with a radio operator, he is able to target locations for off-grid artillery to lay down a  barrage with devastating effect."
     menuImage=Texture'DHGermanCharactersTex.Icons.Zugfuhrer'
     Models(0)="WH_1"
     Models(1)="WH_2"
     Models(2)="WH_3"
     Models(3)="WH_4"
     SleeveTexture=Texture'Weapons1st_tex.Arms.german_sleeves'
     PrimaryWeapons(0)=(Item=Class'DH_Weapons.DH_Kar98Weapon',Amount=18,AssociatedAttachment=Class'ROInventory.ROKar98AmmoPouch')
     SecondaryWeapons(0)=(Item=Class'DH_Weapons.DH_P38Weapon',Amount=1)
     SecondaryWeapons(1)=(Item=Class'DH_Weapons.DH_P08LugerWeapon',Amount=1)
     GivenItems(0)="DH_Equipment.DH_GerArtyBinocularsItem"
     Headgear(0)=Class'DH_GerPlayers.DH_HeerOfficercap'
     Headgear(1)=Class'DH_GerPlayers.DH_HeerCrushercap'
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
     limit=1
}
