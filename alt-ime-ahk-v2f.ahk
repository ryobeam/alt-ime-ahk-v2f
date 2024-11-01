; 左右 Alt キーの空打ちで IME を ON/OFF する AutoHotkey スクリプト
;
; 左 Alt キーの空打ちで IME OFF
; 右 Alt キーの空打ちで IME ON
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
;
; Author:              ryo
; Original author:     karakaram   http://www.karakaram.com/alt-ime-on-off
;                      SorrowBlue  https://github.com/SorrowBlue/alt-ime-ahk-mod-v2

#Include "IMEv2.ahk"

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
A_MaxHotkeysPerInterval := 350

; 既存のインスタンスが存在する場合、終了して新たにインスタンスを開始
#SingleInstance Force

; メニュー項目
Tray:= A_TrayMenu
Tray.Add(A_ScriptName, AppName)
Tray.Disable(A_ScriptName)
Tray.Default := A_ScriptName
Tray.Add()
Tray.Add("Check for Updates...", CheckForUpdates)
Tray.Add("GitHub Repo / Readme", GitHubRepoReadme)
Tray.Add()
Tray.Delete()
Tray.AddStandard()
Return

AppName(A_ThisMenuItem, A_ThisMenuItemPos, MyMenu)
{
    Return
}

CheckForUpdates(A_ThisMenuItem, A_ThisMenuItemPos, MyMenu)
{
    Run("https://github.com/nekocodeX/alt-ime-ahk-mod/releases/latest")
    Return
}

GitHubRepoReadme(A_ThisMenuItem, A_ThisMenuItemPos, MyMenu)
{
    Run("https://github.com/nekocodeX/alt-ime-ahk-mod")
    Return
}

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
{
    Return
}

; 上部メニューがアクティブになるのを抑制 / Xbox Game Bar 起動用仮想キーコードとのバッティング回避 (vk07 -> vkFF)
*~LAlt::
{
    Send("{Blind}{vkFF}")
}
*~RAlt::
{
    Send("{Blind}{vkFF}")
}

; 左 Alt 空打ちで IME を OFF
#HotIf !WinActive("ahk_exe mstsc.exe")
LAlt up::
{
    if (A_PriorHotkey == "*~LAlt") {
        IME_SET(0)
    }
    Return
}
#HotIf

; 右 Alt 空打ちで IME を ON
#HotIf !WinActive("ahk_exe mstsc.exe")
RAlt up::
{
    if (A_PriorHotkey == "*~RAlt") {
        IME_SET(1)
    }
    Return
}
#HotIf

; CapsLock 無効化
CapsLock::return

#f::
{
A_Clipboard := ""
Send "^c"
ClipWait(1)
Run "https://www.google.co.jp/search?q=" A_Clipboard
}
