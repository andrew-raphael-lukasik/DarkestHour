//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_PanzerIVJTank_SnowOne extends DH_PanzerIVJTank;

#exec OBJ LOAD FILE=..\Textures\DH_VehiclesGE_tex5.utx

static function StaticPrecache(LevelInfo L)
{
    super.StaticPrecache(L);

    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex3.ext_vehicles.Panzer4J_body_snow1');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex3.ext_vehicles.Panzer4J_armor_ext');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex5.ext_vehicles.jagdpanzeriv_body_snow');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex5.ext_vehicles.jagdpanzeriv_armor_snow');
    L.AddPrecacheMaterial(Material'DH_VehiclesGE_tex5.ext_vehicles.jagdpanzeriv_wheels_snow');
}

simulated function UpdatePrecacheMaterials()
{
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex3.ext_vehicles.Panzer4J_body_snow1');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex3.ext_vehicles.Panzer4J_armor_ext');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex5.ext_vehicles.jagdpanzeriv_body_snow');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex5.ext_vehicles.jagdpanzeriv_armor_snow');
    Level.AddPrecacheMaterial(Material'DH_VehiclesGE_tex5.ext_vehicles.jagdpanzeriv_wheels_snow');

    super.UpdatePrecacheMaterials();
}

defaultproperties
{
    PassengerWeapons(0)=(WeaponPawnClass=class'DH_Vehicles.DH_PanzerIVJCannonPawn_SnowOne')
    Skins(0)=texture'DH_VehiclesGE_tex3.ext_vehicles.Panzer4J_body_snow1'
}
