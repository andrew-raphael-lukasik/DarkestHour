//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2017
//==============================================================================

class DHConstruction_GrenadeCrate extends DHConstruction_InventorySpawner;

static function class<DHInventorySpawner> GetSpawnerClass(DHConstruction.Context Context)
{
    switch (Context.TeamIndex)
    {
        case AXIS_TEAM_INDEX:
            return class'DH_Weapons.DH_StielGranateSpawner';
        case ALLIES_TEAM_INDEX:
            return class'DH_Weapons.DH_F1GrenadeSpawner';
        default:
            return none;
    }
}

defaultproperties
{
}