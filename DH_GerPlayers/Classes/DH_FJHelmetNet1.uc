//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_FJHelmetNet1 extends DH_Headgear;

static function StaticPrecache(LevelInfo L)
{
//  L.AddPrecacheMaterial(Material'DHGermanCharactersTex.GerHeadGear.FJ_HelmetNet1');
}

defaultproperties
{
    Mesh=SkeletalMesh'dhgear_anm.Ger_Fallsch_Helmet'
    Skins(0)=texture'DHGermanCharactersTex.GerHeadgear.FJ_HelmetNet1'
}
