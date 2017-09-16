//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2017
//==============================================================================

class DHMapMarker_Squad_Defend extends DHMapMarker_Squad
    abstract;

static function OnMapMarkerPlaced(DHPlayer PC)
{
    if (PC != none && PC.SquadReplicationInfo != none)
    {
        PC.SquadReplicationInfo.BroadcastSquadLocalizedMessage(PC.GetTeamNum(), PC.GetSquadIndex(), class'DHSquadOrderMessage', 2);
    }
}

defaultproperties
{
    IconMaterial=texture'DH_InterfaceArt_tex.HUD.squad_order_defend'
    IconColor=(R=0,G=0,B=255,A=255)
    MarkerName="Defend"
}
