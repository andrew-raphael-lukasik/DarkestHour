//==============================================================================
// DH_CromwellCannonShellSmoke
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// M4 American Sherman tank - 75mm M89 Smoke
//==============================================================================
class DH_CromwellCannonShellSmoke extends DH_ROTankCannonShellSmoke;

defaultproperties
{
     MechanicalRanges(0)=(RangeValue=16.000000)
     MechanicalRanges(1)=(Range=200,RangeValue=36.000000)
     MechanicalRanges(2)=(Range=400,RangeValue=68.000000)
     MechanicalRanges(3)=(Range=600,RangeValue=96.000000)
     MechanicalRanges(4)=(Range=800,RangeValue=136.000000)
     MechanicalRanges(5)=(Range=1000,RangeValue=176.000000)
     MechanicalRanges(6)=(Range=1200,RangeValue=228.000000)
     MechanicalRanges(7)=(Range=1400,RangeValue=292.000000)
     MechanicalRanges(8)=(Range=1600,RangeValue=352.000000)
     MechanicalRanges(9)=(Range=1800,RangeValue=412.000000)
     MechanicalRanges(10)=(Range=2000,RangeValue=476.000000)
     MechanicalRanges(11)=(Range=2200,RangeValue=556.000000)
     MechanicalRanges(12)=(Range=2400,RangeValue=640.000000)
     MechanicalRanges(13)=(Range=2600,RangeValue=726.000000)
     MechanicalRanges(14)=(Range=2800,RangeValue=828.000000)
     MechanicalRanges(15)=(Range=3000,RangeValue=938.000000)
     MechanicalRanges(16)=(Range=3200,RangeValue=1064.000000)
     OpticalRanges(1)=(Range=200)
     OpticalRanges(2)=(Range=400)
     OpticalRanges(3)=(Range=600)
     OpticalRanges(4)=(Range=800)
     OpticalRanges(5)=(Range=1000)
     OpticalRanges(6)=(Range=1200)
     OpticalRanges(7)=(Range=1400)
     OpticalRanges(8)=(Range=1600)
     OpticalRanges(9)=(Range=1800)
     OpticalRanges(10)=(Range=2000)
     OpticalRanges(11)=(Range=2200)
     OpticalRanges(12)=(Range=2400)
     OpticalRanges(13)=(Range=2600)
     OpticalRanges(14)=(Range=2800)
     OpticalRanges(15)=(Range=3000)
     OpticalRanges(16)=(Range=3200)
     bOpticalAiming=False
     DHPenetrationTable(0)=0.200000
     DHPenetrationTable(1)=0.200000
     DHPenetrationTable(2)=0.200000
     DHPenetrationTable(3)=0.200000
     DHPenetrationTable(4)=0.100000
     ShellDiameter=7.500000
     ImpactDamage=125
     BallisticCoefficient=1.686000
     Speed=27943.000000
     MaxSpeed=27943.000000
     MyDamageType=Class'DH_Vehicles.DH_HECannonShellDamageSmoke'
     Tag="M89 WP"
}
