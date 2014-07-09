//==============================================================================
// DH_6PounderCannonShellAPDS
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
// AHZ AT Gun Source -(c) William "Teufelhund" Miller
//
// 6 Pounder Mk. IV AT Gun - Mk.I APDS Shot
//==============================================================================
class DH_6PounderCannonShellAPDS extends  DH_ROTankCannonShellAPDS;

defaultproperties
{
     MechanicalRanges(1)=(Range=100,RangeValue=1.000000)
     MechanicalRanges(2)=(Range=200,RangeValue=2.000000)
     MechanicalRanges(3)=(Range=300,RangeValue=3.000000)
     MechanicalRanges(4)=(Range=400,RangeValue=4.000000)
     MechanicalRanges(5)=(Range=500,RangeValue=5.500000)
     MechanicalRanges(6)=(Range=600,RangeValue=7.000000)
     MechanicalRanges(7)=(Range=700,RangeValue=15.000000)
     MechanicalRanges(8)=(Range=800,RangeValue=25.000000)
     MechanicalRanges(9)=(Range=900,RangeValue=45.000000)
     MechanicalRanges(10)=(Range=1000,RangeValue=62.000000)
     MechanicalRanges(11)=(Range=1100,RangeValue=72.000000)
     MechanicalRanges(12)=(Range=1200,RangeValue=80.000000)
     MechanicalRanges(13)=(Range=1300,RangeValue=92.000000)
     MechanicalRanges(14)=(Range=1400,RangeValue=102.000000)
     MechanicalRanges(15)=(Range=1500,RangeValue=112.000000)
     MechanicalRanges(16)=(Range=1600,RangeValue=118.000000)
     MechanicalRanges(17)=(Range=1700,RangeValue=134.000000)
     MechanicalRanges(18)=(Range=1800,RangeValue=172.000000)
     MechanicalRanges(19)=(Range=1900,RangeValue=186.000000)
     MechanicalRanges(20)=(Range=2000,RangeValue=210.000000)
     OpticalRanges(1)=(Range=100)
     OpticalRanges(2)=(Range=200)
     OpticalRanges(3)=(Range=300)
     OpticalRanges(4)=(Range=400)
     OpticalRanges(5)=(Range=500,RangeValue=0.500000)
     OpticalRanges(6)=(Range=600)
     OpticalRanges(7)=(Range=700)
     OpticalRanges(8)=(Range=800)
     OpticalRanges(9)=(Range=900)
     OpticalRanges(10)=(Range=1000)
     OpticalRanges(11)=(Range=1100)
     OpticalRanges(12)=(Range=1200)
     OpticalRanges(13)=(Range=1300)
     OpticalRanges(14)=(Range=1400)
     OpticalRanges(15)=(Range=1500)
     OpticalRanges(16)=(Range=1600)
     OpticalRanges(17)=(Range=1700)
     OpticalRanges(18)=(Range=1800)
     OpticalRanges(19)=(Range=1900)
     OpticalRanges(20)=(Range=2000)
     bMechanicalAiming=True
     DHPenetrationTable(0)=14.200000
     DHPenetrationTable(1)=13.400000
     DHPenetrationTable(2)=12.700000
     DHPenetrationTable(3)=11.700000
     DHPenetrationTable(4)=11.000000
     DHPenetrationTable(5)=10.400000
     DHPenetrationTable(6)=9.500000
     DHPenetrationTable(7)=8.900000
     DHPenetrationTable(8)=8.300000
     DHPenetrationTable(9)=7.300000
     DHPenetrationTable(10)=6.400000
     ShellDiameter=3.700000
     ShellShatterEffectClass=Class'DH_Effects.DH_TankAPShellShatterSmall'
     TracerEffect=Class'DH_Effects.DH_RedTankShellTracer'
     ShellImpactDamage=Class'DH_Guns.DH_6PounderCannonShellDamageAPDS'
     ImpactDamage=300
     BallisticCoefficient=1.150000
     SpeedFudgeScale=0.400000
     Speed=73569.000000
     MaxSpeed=73569.000000
     Tag="Mk.I APDS"
}
