//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DH_StuartCannonShell extends DHCannonShell;

defaultproperties
{
    Speed=53291.0
    MaxSpeed=53291.0
    ShellDiameter=3.7
    bShatterProne=true
    BallisticCoefficient=0.984 //TODO: double check this

    //Damage
    ImpactDamage=250
    ShellImpactDamage=class'DH_Vehicles.DH_StuartCannonShellDamageAP'
    HullFireChance=0.15
    EngineFireChance=0.45

    //Effects
    VehicleDeflectSound=SoundGroup'ProjectileSounds.Bullets.PTRD_deflect'
    VehicleHitSound=SoundGroup'ProjectileSounds.Bullets.PTRD_penetrate'
    ShellHitVehicleEffectClass=class'ROEffects.TankAPHitPenetrateSmall'
    ShellShatterEffectClass=class'DH_Effects.DHShellShatterEffect_Small'
    CoronaClass=class'DH_Effects.DHShellTracer_Red'

    //Penetration
    DHPenetrationTable(0)=7.1
    DHPenetrationTable(1)=6.1
    DHPenetrationTable(2)=5.7
    DHPenetrationTable(3)=5.3
    DHPenetrationTable(4)=5.0
    DHPenetrationTable(5)=4.6
    DHPenetrationTable(6)=4.3
    DHPenetrationTable(7)=3.9
    DHPenetrationTable(8)=3.6
    DHPenetrationTable(9)=3.3
    DHPenetrationTable(10)=3.0
}
