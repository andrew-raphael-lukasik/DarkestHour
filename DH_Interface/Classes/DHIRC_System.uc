//-----------------------------------------------------------
//DHIRC_System
//-----------------------------------------------------------
class DHIRC_System extends UT2k4IRC_System;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	Super.Initcomponent(MyController, MyOwner);
    	class'DHInterfaceUtil'.static.SetROStyle(MyController, Controls);
}

defaultproperties
{
     Begin Object Class=GUISplitter Name=SplitterA
         SplitPosition=0.800000
         bFixedSplitter=True
         DefaultPanels(0)="DH_Interface.DHGUIScrollTextBox"
         DefaultPanels(1)="DH_Interface.DHIRC_Panel"
         OnCreateComponent=DHIRC_System.InternalOnCreateComponent
         StyleName="DHNoBox"
         WinHeight=0.950000
         TabOrder=1
     End Object
     sp_Main=GUISplitter'DH_Interface.DHIRC_System.SplitterA'

}
