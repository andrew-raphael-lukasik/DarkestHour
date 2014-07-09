//=============================================================================
// DH_USOfficer502101st.
//=============================================================================
class DH_USOfficer502101st extends DH_US_502PIR;

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
     AltName="Artillery Officer"
     Article="an "
     PluralName="Artillery Officers"
     InfoText="The artillery officer is tasked with directing artillery fire upon the battlefield through the use of long-range observation. Coordinating his efforts with a radio operator, he is able to target locations for off-grid artillery to lay down a  barrage with devastating effect."
     menuImage=Texture'DHUSCharactersTex.Icons.ABOf'
     Models(0)="US_502101ABOf1"
     Models(1)="US_502101ABOf2"
     Models(2)="US_502101ABOf3"
     SleeveTexture=Texture'DHUSCharactersTex.Sleeves.USAB_sleeves'
     PrimaryWeapons(0)=(Item=Class'DH_Weapons.DH_M1CarbineWeapon',Amount=6,AssociatedAttachment=Class'DH_Weapons.DH_M1CarbineAmmoPouch')
     SecondaryWeapons(0)=(Item=Class'DH_Weapons.DH_ColtM1911Weapon',Amount=1)
     GivenItems(0)="DH_Equipment.DH_USArtyBinocularsItem"
     Headgear(0)=Class'DH_USPlayers.DH_AmericanHelmet502101stOfficera'
     Headgear(1)=Class'DH_USPlayers.DH_AmericanHelmet502101stOfficerb'
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=True
     limit=1
}
