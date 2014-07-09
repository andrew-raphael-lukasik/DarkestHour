//=============================================================================
// ROGermanYellowOrangeTracer
//=============================================================================
// Yellow-Orange tracer for the Germans MG's
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 John Ramm-Jaeger" Gibson
//=============================================================================
class DH_GermanYellowOrangeTracer extends Emitter;

defaultproperties
{
     Begin Object Class=TrailEmitter Name=TrailEmitter0
         TrailShadeType=PTTST_PointLife
         TrailLocation=PTTL_FollowEmitter
         MaxPointsPerTrail=150
         DistanceThreshold=80.000000
         UseCrossedSheets=True
         PointLifeTime=0.200000
         UseColorScale=True
         UseSizeScale=True
         UseRegularSizeScale=False
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=20,G=209,R=235))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=20,G=209,R=235))
         Opacity=0.650000
         MaxParticles=1
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=0.500000)
         StartSizeRange=(X=(Min=2.000000,Max=2.000000))
         InitialParticlesPerSecond=2000.000000
         Texture=Texture'Effects_Tex.Weapons.trailblur'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=1.500000,Max=2.500000)
     End Object
     Emitters(0)=TrailEmitter'DH_Weapons.DH_GermanYellowOrangeTracer.TrailEmitter0'

     AutoDestroy=True
     bNoDelete=False
     Physics=PHYS_Trailer
     bHardAttach=True
}
