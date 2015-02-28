//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_BazookaAmmoMsg extends LocalMessage;

var(Messages) localized string RocketLoaded;

static function string GetString(optional int Switch, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject)
{
    switch (Switch)
    {
        case 0:
            return default.RocketLoaded;
        default:
            return default.RocketLoaded;
    }
}

defaultproperties
{
    RocketLoaded="Rocket Loaded"
    bIsUnique=true
    bIsConsoleMessage=false
    LifeTime=2
    PosX=0.28
    PosY=0.93
    FontSize=-2
}
