// *************************************************************************
//
//	***   FJ helmet   ***
//
// *************************************************************************

class DH_FJHelmetCamo1 extends DH_Headgear;

static function StaticPrecache(LevelInfo L)
{
//	L.AddPrecacheMaterial(Material'DHGermanCharactersTex.GerHeadGear.FJ_HelmetCamo1');
}

defaultproperties
{
     Mesh=SkeletalMesh'dhgear_anm.Ger_Fallsch_Helmet'
     Skins(0)=Texture'DHGermanCharactersTex.GerHeadgear.FJ_HelmetCamo1'
}
