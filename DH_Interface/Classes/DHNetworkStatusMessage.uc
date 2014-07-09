//====================================================================
// DHNetworkStatusMessage
//
// Used for when a player is disconnected to a game, will take them back
//	to the DH server menu, not the RO server browser
//====================================================================

class DHNetworkStatusMessage extends GUIPage;

var bool bIgnoreEsc;

var		localized string LeaveMPButtonText;
var		localized string LeaveSPButtonText;

var		float ButtonWidth;
var		float ButtonHeight;
var		float ButtonHGap;
var		float ButtonVGap;
var		float BarHeight;
var		float BarVPos;


function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	Super.InitComponent(Mycontroller, MyOwner);
	PlayerOwner().ClearProgressMessages();
}


function bool InternalOnClick(GUIComponent Sender)
{
	if(Sender==Controls[1]) // OK
	{
		Controller.OpenMenu("DH_Interface.DHServerBrowser");
	}
	return true;
}

event HandleParameters(string Param1, string Param2)
{
	//log("IN DHNETWORKSTATUSMESSAGE");
	GUILabel(Controls[2]).Caption = Param1$"|"$Param2;
	PlayerOwner().ClearProgressMessages();
}

defaultproperties
{
     bIgnoreEsc=True
     bRequire640x480=False
     OpenSound=Sound'ROMenuSounds.Generic.msfxEdit'
     Begin Object Class=GUIButton Name=NetStatBackground
         StyleName="SquareBar"
         WinTop=0.375000
         WinHeight=0.250000
         bAcceptsInput=False
         bNeverFocus=True
         OnKeyEvent=NetStatBackground.InternalOnKeyEvent
     End Object
     Controls(0)=GUIButton'DH_Interface.DHNetworkStatusMessage.NetStatBackground'

     Begin Object Class=GUIButton Name=NetStatOk
         Caption="OK"
         StyleName="MidGameButton"
         WinTop=0.675000
         WinLeft=0.375000
         WinWidth=0.250000
         WinHeight=0.050000
         bBoundToParent=True
         OnClick=DHNetworkStatusMessage.InternalOnClick
         OnKeyEvent=NetStatOk.InternalOnKeyEvent
     End Object
     Controls(1)=GUIButton'DH_Interface.DHNetworkStatusMessage.NetStatOk'

     Begin Object Class=GUILabel Name=NetStatLabel
         TextAlign=TXTA_Center
         TextColor=(B=255,G=255,R=255)
         TextFont="UT2HeaderFont"
         bMultiLine=True
         WinTop=0.125000
         WinHeight=0.500000
         bBoundToParent=True
     End Object
     Controls(2)=GUILabel'DH_Interface.DHNetworkStatusMessage.NetStatLabel'

     WinTop=0.375000
     WinHeight=0.250000
}
