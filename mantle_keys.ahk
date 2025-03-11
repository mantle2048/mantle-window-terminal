; ﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Remap hotkeys
Capslock::Ctrl

; Global hotkeys
; #w::
;     Run chrome.exe --app="https://mail.google.com/mail/"
;     return

#NoEnv
#SingleInstance force
SendMode Input
DetectHiddenWindows, on
SetWinDelay, 0

#`::
    terminal := WinExist("ahk_exe WindowsTerminal.exe")
    if (terminal)
    {
        active := WinActive("ahk_id " terminal)
        if (active)
            WinMinimize, ahk_id %active%
        else
            WinActivate, ahk_id %terminal%
    }
    else
        Run, wt.exe
Return


#o::FolderToggleOpen("D:\OneDrive")

FolderToggleOpen(FolderPath) {
	For Window In ComObjCreate("Shell.Application").Windows {
		If (RTrim(Window.Document.Folder.Self.Path, "\") = RTrim(FolderPath, "\"))
			Return Window.Quit
	}
	Run, % FolderPath
}

#q::
    zotero := WinExist("ahk_exe zotero.exe")
    if (zotero)
    {
        active := WinActive("ahk_id " zotero)
        if (active)
            WinMinimize, ahk_id %active%
        else
            WinActivate, ahk_id %zotero%
    }
    else
        if FileExist("D:\Zotero\zotero.exe")
            Run D:\Zotero\zotero.exe
Return

#w::
    obsidian := WinExist("ahk_exe Obsidian.exe")
    if (obsidian)
    {
        active := WinActive("ahk_id " obsidian)
        if (active)
            WinMinimize, ahk_id %active%
        else
            WinActivate, ahk_id %obsidian%
    }
    else
        if FileExist("C:\Users\mayan-y7000p\AppData\Local\Obsidian\Obsidian.exe")
            Run C:\Users\mayan-y7000p\AppData\Local\Obsidian\Obsidian.exet
Return

