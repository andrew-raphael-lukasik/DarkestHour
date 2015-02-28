//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DHMOTDConfigPage extends MOTDConfigPage;

function AddSystemMenu()
{
    local eFontScale tFontScale;

    b_ExitButton = GUIButton(t_WindowTitle.AddComponent("XInterface.GUIButton"));
    b_ExitButton.Style = Controller.GetStyle("DHCloseButton",tFontScale);
    b_ExitButton.OnClick = XButtonClicked;
    b_ExitButton.bNeverFocus=true;
    b_ExitButton.FocusInstead = t_WindowTitle;
    b_ExitButton.RenderWeight=1;
    b_ExitButton.bScaleToParent = false;
    b_ExitButton.OnPreDraw = SystemMenuPreDraw;
    b_ExitButton.bStandardized=true;
    b_ExitButton.StandardHeight=0.03;
    // Do not want OnClick() called from MousePressed()
    b_ExitButton.bRepeatClick = false;
}

defaultproperties
{
    MOType="DH_Interface.DHmoEditBox"
    Begin Object Class=DHGUIMultiOptionListBox Name=ValueListBox
        bVisibleWhenEmpty=true
        OnCreateComponent=DHMOTDConfigPage.InternalOnCreateComponent
        WinTop=0.140209
        WinLeft=0.02125
        WinWidth=0.865001
        WinHeight=0.714452
        TabOrder=0
        bBoundToParent=true
        bScaleToParent=true
        OnChange=DHMOTDConfigPage.InternalOnChange
    End Object
    lb_Values=DHGUIMultiOptionListBox'DH_Interface.DHMOTDConfigPage.ValueListBox'
    ButtonStyle="DHMenuTextButtonStyle"
    Begin Object Class=AltSectionBackground Name=Bk1
        HeaderBase=texture'DH_GUI_Tex.Menu.DHDisplay'
        LeftPadding=0.01
        RightPadding=0.15
        WinTop=0.095833
        WinLeft=0.04375
        WinWidth=0.7625
        WinHeight=0.575
        OnPreDraw=Bk1.InternalPreDraw
    End Object
    sb_Bk1=AltSectionBackground'DH_Interface.DHMOTDConfigPage.Bk1'
    Begin Object Class=DHGUISectionBackground Name=InternalFrameImage
        WinTop=0.075
        WinLeft=0.04
        WinWidth=0.675859
        WinHeight=0.550976
        OnPreDraw=InternalFrameImage.InternalPreDraw
    End Object
    sb_Main=DHGUISectionBackground'DH_Interface.DHMOTDConfigPage.InternalFrameImage'
    Begin Object Class=GUIButton Name=LockedCancelButton
        Caption="Cancel"
        bAutoShrink=false
        StyleName="DHMenuTextButtonStyle"
        WinTop=0.872397
        WinLeft=0.512695
        WinWidth=0.159649
        TabOrder=99
        bBoundToParent=true
        OnClick=DHMOTDConfigPage.InternalOnClick
        OnKeyEvent=LockedCancelButton.InternalOnKeyEvent
    End Object
    b_Cancel=GUIButton'DH_Interface.DHMOTDConfigPage.LockedCancelButton'
    Begin Object Class=GUIButton Name=LockedOKButton
        Caption="OK"
        bAutoShrink=false
        StyleName="DHMenuTextButtonStyle"
        WinTop=0.872397
        WinLeft=0.742188
        WinWidth=0.159649
        TabOrder=100
        bBoundToParent=true
        OnClick=DHMOTDConfigPage.InternalOnClick
        OnKeyEvent=LockedOKButton.InternalOnKeyEvent
    End Object
    b_OK=GUIButton'DH_Interface.DHMOTDConfigPage.LockedOKButton'
    Begin Object Class=DHGUIHeader Name=TitleBar
        bUseTextHeight=true
        StyleName="DHNoBox"
        WinTop=0.017
        WinHeight=0.05
        RenderWeight=0.1
        bBoundToParent=true
        bScaleToParent=true
        bAcceptsInput=true
        bNeverFocus=false
        ScalingType=SCALE_X
        OnMousePressed=FloatingWindow.FloatingMousePressed
        OnMouseRelease=FloatingWindow.FloatingMouseRelease
    End Object
    t_WindowTitle=DHGUIHeader'DH_Interface.DHMOTDConfigPage.TitleBar'
    Begin Object Class=FloatingImage Name=FloatingFrameBackground
        Image=texture'DH_GUI_Tex.Menu.DHDisplay_withcaption_noAlpha'
        DropShadow=none
        ImageStyle=ISTY_Stretched
        ImageRenderStyle=MSTY_Normal
        WinTop=0.02
        WinLeft=0.0
        WinWidth=1.0
        WinHeight=0.98
        RenderWeight=0.000003
    End Object
    i_FrameBG=FloatingImage'DH_Interface.DHMOTDConfigPage.FloatingFrameBackground'
    OnCreateComponent=DHMOTDConfigPage.InternalOnCreateComponent
}
