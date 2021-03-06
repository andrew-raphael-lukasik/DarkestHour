//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DHUnits extends Object
    abstract;

static final function float MetersToUnreal(coerce float Meters)
{
    return Meters * 60.352;
}

static final function float UnrealToMeters(coerce float Unreal)
{
    return Unreal * 0.01656945917285259809119830328738;
}

static final function float MetersToInches(coerce float Meters)
{
    return Meters * 39.3701;
}

static final function float UnrealToInches(coerce float Unreal)
{
    return Unreal * 0.65234126458112407211028632025448;
}

static final function int RadiansToMilliradians(coerce float Radians)
{
    return int(Radians * 1018.5916357881301);
}

static final function int UnrealToMilliradians(coerce float Unreal)
{
    return int(Unreal * 0.09765625);
}
