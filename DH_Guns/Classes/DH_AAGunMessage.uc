//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_AAGunMessage extends ROVehicleMessage;

var(Messages) localized string GunManned;
var(Messages) localized string CannotUse;
var(Messages) localized string NoExit;

static function string GetString(optional int Switch, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject)
{
    switch (Switch)
    {
        case 0:
            return default.NotQualified;
        case 1:
            return default.VehicleIsEnemy;
        case 2:
            return default.CannotEnter;
        case 3:
            return default.GunManned;
        case 4:
            return default.CannotUse;
        default:
            return default.NoExit;
    }
}

defaultproperties
{
    GunManned="The anti-aircraft gun is fully crewed"
    CannotUse="Cannot use this anti-aircraft gun"
    NoExit="No exit location can be found for this anti-aircraft gun"
    NotQualified="You are not qualified to operate anti-aircraft guns"
    VehicleIsEnemy="Cannot use an enemy anti-aircraft gun"
}
