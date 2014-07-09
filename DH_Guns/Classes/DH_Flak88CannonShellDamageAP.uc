//==============================================================================
// DH_Flak88CannonShellDamageAP
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
// AHZ AT Gun Source -(c) William "Teufelhund" Miller
//
// German 88mm Pzgr.39 APCBC - DamageType
//==============================================================================
class DH_Flak88CannonShellDamageAP extends ROTankShellImpactDamage;

defaultproperties
{
     HUDIcon=Texture'DH_InterfaceArt_tex.deathicons.ATGunKill'
     APCDamageModifier=0.750000
     VehicleDamageModifier=1.500000
     DeathString="%o was killed by %k's Flak 36 AT-Gun APCBC shell."
     FemaleSuicide="%o fired her Flak 36 AT-Gun APCBC shell prematurely."
     MaleSuicide="%o fired his Flak 36 AT-Gun APCBC shell prematurely."
}
