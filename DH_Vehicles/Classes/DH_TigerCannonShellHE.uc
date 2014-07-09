//==============================================================================
// DH_TigerCannonShellHE
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// German 88mm Schw.Sprgr.Patr.L/4.5 HE
//==============================================================================
class DH_TigerCannonShellHE extends DH_ROTankCannonShellHE;

defaultproperties
{
     MechanicalRanges(1)=(Range=100,RangeValue=14.000000)
     MechanicalRanges(2)=(Range=200,RangeValue=25.000000)
     MechanicalRanges(3)=(Range=300,RangeValue=45.000000)
     MechanicalRanges(4)=(Range=400,RangeValue=62.000000)
     MechanicalRanges(5)=(Range=500,RangeValue=75.000000)
     MechanicalRanges(6)=(Range=600,RangeValue=92.000000)
     MechanicalRanges(7)=(Range=700,RangeValue=111.000000)
     MechanicalRanges(8)=(Range=800,RangeValue=125.000000)
     MechanicalRanges(9)=(Range=900,RangeValue=142.000000)
     MechanicalRanges(10)=(Range=1000,RangeValue=168.000000)
     MechanicalRanges(11)=(Range=1100,RangeValue=185.000000)
     MechanicalRanges(12)=(Range=1200,RangeValue=202.000000)
     MechanicalRanges(13)=(Range=1300,RangeValue=224.000000)
     MechanicalRanges(14)=(Range=1400,RangeValue=245.000000)
     MechanicalRanges(15)=(Range=1500,RangeValue=267.000000)
     MechanicalRanges(16)=(Range=1600,RangeValue=289.000000)
     MechanicalRanges(17)=(Range=1700,RangeValue=312.000000)
     MechanicalRanges(18)=(Range=1800,RangeValue=334.000000)
     MechanicalRanges(19)=(Range=1900,RangeValue=354.000000)
     MechanicalRanges(20)=(Range=2000,RangeValue=374.000000)
     MechanicalRanges(21)=(Range=2200,RangeValue=427.000000)
     MechanicalRanges(22)=(Range=2400,RangeValue=486.000000)
     MechanicalRanges(23)=(Range=2600,RangeValue=539.000000)
     MechanicalRanges(24)=(Range=2800,RangeValue=599.000000)
     MechanicalRanges(25)=(Range=3000,RangeValue=662.000000)
     MechanicalRanges(26)=(Range=3200,RangeValue=734.000000)
     MechanicalRanges(27)=(Range=3400,RangeValue=800.000000)
     MechanicalRanges(28)=(Range=3600,RangeValue=872.000000)
     MechanicalRanges(29)=(Range=3800,RangeValue=949.000000)
     MechanicalRanges(30)=(Range=4000,RangeValue=1028.000000)
     OpticalRanges(1)=(Range=100)
     OpticalRanges(2)=(Range=200)
     OpticalRanges(3)=(Range=300)
     OpticalRanges(4)=(Range=400)
     OpticalRanges(5)=(Range=500)
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
     OpticalRanges(21)=(Range=2200)
     OpticalRanges(22)=(Range=2400)
     OpticalRanges(23)=(Range=2600)
     OpticalRanges(24)=(Range=2800)
     OpticalRanges(25)=(Range=3000)
     OpticalRanges(26)=(Range=3200)
     OpticalRanges(27)=(Range=3400)
     OpticalRanges(28)=(Range=3600)
     OpticalRanges(29)=(Range=3800)
     OpticalRanges(30)=(Range=4000)
     bMechanicalAiming=True
     DHPenetrationTable(0)=5.200000
     DHPenetrationTable(1)=4.900000
     DHPenetrationTable(2)=4.300000
     DHPenetrationTable(3)=4.000000
     DHPenetrationTable(4)=3.800000
     DHPenetrationTable(5)=3.200000
     DHPenetrationTable(6)=3.000000
     DHPenetrationTable(7)=2.700000
     DHPenetrationTable(8)=2.300000
     DHPenetrationTable(9)=1.900000
     DHPenetrationTable(10)=1.500000
     ShellDiameter=8.800000
     bIsAlliedShell=False
     PenetrationMag=1020.000000
     ShellImpactDamage=Class'DH_Vehicles.DH_TigerCannonShellDamageAP'
     ImpactDamage=550
     BallisticCoefficient=2.400000
     Speed=49489.000000
     MaxSpeed=49489.000000
     Damage=475.000000
     DamageRadius=1550.000000
     MyDamageType=Class'DH_Vehicles.DH_TigerCannonShellDamageHE'
     Tag="Schw.Sprgr.Patr."
}
