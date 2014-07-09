//=============================================================================
// ROMapVotingPage
//=============================================================================
// Modified Map Voting page
//=============================================================================
// Red Orchestra Source
// Copyright (C) 2005 Mathieu Mallet
//=============================================================================

class DHMapVotingPage extends MapVotingPage;

function bool AlignBK(Canvas C)
{
	i_MapCountListBackground.WinWidth  = lb_VoteCountListbox.MyList.ActualWidth();
	i_MapCountListBackground.WinHeight = lb_VoteCountListbox.MyList.ActualHeight();
	i_MapCountListBackground.WinLeft   = lb_VoteCountListbox.MyList.ActualLeft();
	i_MapCountListBackground.WinTop    = lb_VoteCountListbox.MyList.ActualTop();

	return false;
}


/*defaultproperties
{
     i_MapListBackground=None

     Begin Object Class=MapVoteCountMultiColumnListBox Name=VoteCountListBox
         WinTop=0.077369
         WinLeft=0.020000
         WinWidth=0.960000
         WinHeight=0.267520
         bVisibleWhenEmpty=True
         bBoundToParent=True
         bScaleToParent=True
         HeaderColumnPerc(0)=0.400000
         HeaderColumnPerc(1)=0.200000
         FontScale=FNS_Small
         DefaultListClass="DH_Interface.DHMapVoteCountMultiColumnList"
     End Object
     lb_VoteCountListBox=VoteCountListBox

     Begin Object Class=moComboBox Name=GameTypeCombo
         CaptionWidth=0.350000
         Caption="Filter Game Type:"
         bScaleToParent=True
         bVisible=False
     End Object
     co_GameType=GameTypeCombo


     Begin Object Class=GUIImage Name=MapCountListBackground
         Image=Texture'InterfaceArt_tex.Menu.buttonGreyDark01'
         ImageStyle=ISTY_Stretched
         OnDraw=AlignBK
     End Object
     i_MapCountListBackground=MapCountListBackground

} */

defaultproperties
{
     Begin Object Class=MapVoteCountMultiColumnListBox Name=VoteCountListBox
         HeaderColumnPerc(0)=0.400000
         HeaderColumnPerc(1)=0.200000
         DefaultListClass="DH_Interface.DHMapVoteCountMultiColumnList"
         bVisibleWhenEmpty=True
         OnCreateComponent=VoteCountListBox.InternalOnCreateComponent
         WinTop=0.077369
         WinLeft=0.020000
         WinWidth=0.960000
         WinHeight=0.267520
         bBoundToParent=True
         bScaleToParent=True
         OnRightClick=VoteCountListBox.InternalOnRightClick
     End Object
     lb_VoteCountListBox=MapVoteCountMultiColumnListBox'DH_Interface.DHMapVotingPage.VoteCountListBox'

     Begin Object Class=moComboBox Name=GameTypeCombo
         CaptionWidth=0.350000
         Caption="Filter Game Type:"
         OnCreateComponent=GameTypeCombo.InternalOnCreateComponent
         bScaleToParent=True
         bVisible=False
     End Object
     co_GameType=moComboBox'DH_Interface.DHMapVotingPage.GameTypeCombo'

     i_MapListBackground=None

     Begin Object Class=GUIImage Name=MapCountListBackground
         Image=Texture'InterfaceArt_tex.Menu.buttonGreyDark01'
         ImageStyle=ISTY_Stretched
         OnDraw=DHMapVotingPage.AlignBK
     End Object
     i_MapCountListBackground=GUIImage'DH_Interface.DHMapVotingPage.MapCountListBackground'

}
