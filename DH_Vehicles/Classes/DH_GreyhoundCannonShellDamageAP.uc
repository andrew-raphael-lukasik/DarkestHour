//==============================================================================
// DH_GreyhoundCannonShellDamageAP
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// American tank shell - 37mm APC M51B1 - DamageType
//==============================================================================
class DH_GreyhoundCannonShellDamageAP extends ROTankShellImpactDamage //ROWeaponDamageType
      abstract;

//Damage class for shells in the 37mm to 50mm calibers

defaultproperties
{
     APCDamageModifier=0.750000
     TreadDamageModifier=0.750000
     DeathString="%o was killed by %k's Greyhound APC shell."
}
