//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DH_RKKA_StandardSquadLeaderLate extends DH_RKKA_StandardSquadLeaderEarly;

defaultproperties
{

    RolePawns(0)=(PawnClass=class'DH_SovietPlayers.DH_SovietTunicSergeantLatePawn',Weight=1.0)
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_PPSH41_stickWeapon',AssociatedAttachment=class'ROInventory.ROPPSh41AmmoPouch')
    PrimaryWeapons(1)=(Item=class'DH_Weapons.DH_SVT40Weapon',AssociatedAttachment=class'ROInventory.ROMN9130AmmoPouch')
    PrimaryWeapons(2)=(Item=class'DH_Weapons.DH_PPS43Weapon',AssociatedAttachment=class'ROInventory.ROPPS43AmmoPouch')
}
