// *************************************************************************
//
//	***  DH_AmericanHelmet506101stEMb   ***
//
// *************************************************************************

class DH_AmericanHelmet506101stEMb extends DH_Headgear;

static function StaticPrecache(LevelInfo L)
{
//	L.AddPrecacheMaterial(Material'DHUSCharactersTex.Gear.US_29thID_Headgear');
}

defaultproperties
{
     Mesh=SkeletalMesh'dhgear_anm.US_Airborne_Helmet2'
     Skins(0)=Texture'DHUSCharactersTex.Gear.US101AB506EM_headgear2'
}
