//=============================================================================
//DH_BritishEngineer
//=============================================================================
class DH_BritishEngineer extends DH_British_Infantry;

function class<ROHeadgear> GetHeadgear()
{
	if (FRand() < 0.2)
	{
		if (FRand() < 0.5)
			return Headgear[2];
		else
			return Headgear[1];
	}
	else
	{
		return Headgear[0];
	}
}

defaultproperties
{
     MyName="Combat Engineer"
     AltName="Combat Engineer"
     Article="a "
     PluralName="Combat Engineers"
     InfoText="The combat engineer is tasked with destroying front-line enemy obstacles and fortifications.  Geared for close quarters combat, the combat engineer is generally equipped with sub machine-guns and grenades.  For instances where enemy fortifications or obstacles are exposed to enemy fire, he is equipped with concealment smoke so he may get close enough to destroy the target."
     menuImage=Texture'DHBritishCharactersTex.Icons.Para_Eng'
     Models(0)="PBI_1"
     Models(1)="PBI_2"
     Models(2)="PBI_3"
     Models(3)="PBI_4"
     Models(4)="PBI_5"
     Models(5)="PBI_6"
     SleeveTexture=Texture'DHBritishCharactersTex.Sleeves.brit_sleeves'
     PrimaryWeapons(0)=(Item=Class'DH_Weapons.DH_StenMkIIWeapon',Amount=6)
     Grenades(0)=(Item=Class'DH_Weapons.DH_M1GrenadeWeapon',Amount=2)
     Grenades(1)=(Item=Class'DH_Equipment.DH_USSmokeGrenadeWeapon',Amount=1)
     GivenItems(0)="DH_Weapons.DH_SatchelCharge10lb10sWeapon"
     Headgear(0)=Class'DH_BritishPlayers.DH_BritishTurtleHelmet'
     Headgear(1)=Class'DH_BritishPlayers.DH_BritishTurtleHelmetNet'
     Headgear(2)=Class'DH_BritishPlayers.DH_BritishTommyHelmet'
     PrimaryWeaponType=WT_SMG
     limit=1
}
