//=============================================================================
// DH_P08LugerDamType
//=============================================================================
// Damage type
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2003 Erik Christensen
//=============================================================================

class DH_P08LugerDamType extends ROWeaponProjectileDamageType
	abstract;

//=============================================================================
// defaultproperties
//=============================================================================

defaultproperties
{
     HUDIcon=Texture'InterfaceArt_tex.deathicons.b9mm'
     WeaponClass=Class'DH_Weapons.DH_P08LugerWeapon'
     DeathString="%o was killed by %k's Luger P08."
     FemaleSuicide="%o turned the gun on herself."
     MaleSuicide="%o turned the gun on himself."
     GibModifier=0.000000
     PawnDamageEmitter=Class'ROEffects.ROBloodPuff'
     KDamageImpulse=750.000000
     KDeathVel=100.000000
     KDeathUpKick=0.000000
}
