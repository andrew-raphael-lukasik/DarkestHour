//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_StuartCannonShellDamageAP extends DHTankShellImpactDamage
    abstract;

//Damage class for shells in the 37mm to 50mm calibers

defaultproperties
{
    APCDamageModifier=0.75
    TreadDamageModifier=0.75
    DeathString="%o was killed by %k's Stuart APC shell."
}
