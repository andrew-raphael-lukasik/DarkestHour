//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//==============================================================================

class DHConstruction_AntiTankCrate extends DHConstruction_InventorySpawner;

static function class<DHInventorySpawner> GetSpawnerClass(DHConstruction.Context Context)
{
    switch (Context.TeamIndex)
    {
        case AXIS_TEAM_INDEX:
            return class'DH_Weapons.DH_PanzerfaustSpawner';
        case ALLIES_TEAM_INDEX:
            return none;
        default:
            return none;
    }
}

defaultproperties
{
    StartRotationMin=(Yaw=16384)
    StartRotationMax=(Yaw=16384)
    SupplyCost=500
    MenuIcon=Texture'DH_InterfaceArt2_tex.Icons.grenade'    // TODO: need a new icon
}

