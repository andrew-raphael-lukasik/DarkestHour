//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_Sherman105CannonShellDamageHE extends ROTankShellExplosionDamage
    abstract;

defaultproperties
{
    TankDamageModifier=0.15
    APCDamageModifier=0.5
    VehicleDamageModifier=1.0
    TreadDamageModifier=1.0
    DeathString="%o was ripped by shrapnel from %k's Sherman(105) HE shell."
    KDeathVel=300.0
    KDeathUpKick=60.0
    KDeadLinZVelScale=0.002
    KDeadAngVelScale=0.003
    HumanObliterationThreshhold=400
}
