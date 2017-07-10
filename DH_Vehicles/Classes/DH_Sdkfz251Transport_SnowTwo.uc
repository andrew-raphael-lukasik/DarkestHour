//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2017
//==============================================================================

class DH_Sdkfz251Transport_SnowTwo extends DH_Sdkfz251Transport; // snow topped version of camo pattern very similar to CamoFour

defaultproperties
{
    Skins(0)=texture'DH_VehiclesGE_tex3.ext_vehicles.Halftrack_body_snow2'
    Skins(1)=texture'axis_vehicles_tex.Treads.Halftrack_treadsnow'
    Skins(2)=texture'axis_vehicles_tex.Treads.Halftrack_treadsnow'
    DestroyedMeshSkins(0)=combiner'DH_VehiclesGE_tex.Destroyed.halftrack_stripe_dest' // close enough match that you can't see the difference in destroyed, burning vehicle
