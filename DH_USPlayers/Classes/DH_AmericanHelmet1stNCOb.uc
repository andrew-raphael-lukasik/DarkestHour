// *************************************************************************
//
//	***   DH_AmericanHelmet1stNCOb  ***
//
// *************************************************************************

class DH_AmericanHelmet1stNCOb extends DH_Headgear;

static function StaticPrecache(LevelInfo L)
{
//	L.AddPrecacheMaterial(Material'DHUSCharactersTex.Gear.US_29thID_Headgear');
}

defaultproperties
{
     Mesh=SkeletalMesh'dhgear_anm.US_GI_Helmet'
     Skins(0)=Texture'DHUSCharactersTex.Gear.US_NCO_headgear2'
}
