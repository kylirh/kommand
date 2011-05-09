;
; CustomHotkeys.ahk
;
; This file contains custom keybindings ONLY.
;

; Special Characters ============================================ ;

$`::
     if (KMD_Enabled == true)
     {
          if (KMD_ViperMode == true)
               KMD_StartKommandMode(false)
          else if (KMD_InsertMode == true)
               KMD_StartViperMode(false)
     }
     else
          Send, ``
return

$#`::
     if (KMD_Enabled == true)
          Send, ``
     else
          Send, $#`
return

#Space:: Run http://docs.google.com/
#Backspace::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}4b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return
#Enter:: Run http://localhost/Cityworks.WebApp/Login.aspx
#+Enter:: Run http://kingcarl/work/Login.aspx
#Insert::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}1b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return
#Delete::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}3b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return

#UseHook on

Browser_Home::
     Start(UserProfile "\AppData\Local\Google\Chrome\Application\chrome.exe --kiosk http://www.kneebouncers.com")
     Run Scripts\ToddlerKeyboard.ahk,,UseErrorLevel
return

Browser_Search::
     Start(UserProfile "\AppData\Local\Google\Chrome\Application\chrome.exe --kiosk")
     Run Scripts\ToddlerKeyboard.ahk,,UseErrorLevel
return

Launch_Mail::
     Start(UserProfile "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\BabySmash\BabySmash!.appref-ms")
return

#UseHook off

; Arrows ======================================================== ;

#Up:: Run iTunes\PlayPause.vbs,,UseErrorLevel
#Down:: Run iTunes\DeleteTrack.js,,UseErrorLevel
#+Down:: Run iTunes\RemoveDeadTracks.js,,UseErrorLevel
#Left:: Run iTunes\BackTrack.vbs,,UseErrorLevel
#Right:: Run iTunes\Next.vbs,,UseErrorLevel

; Numbers ======================================================= ;

#1:: Start("C:\Cityworks\Cityworks.WebApp")
#+1:: Start("C:\Cityworks")

$^1::
     if (KMD_KommandMode == true)
          Send, #1
     else
          Send, ^1
return

#2:: Start("C:\Azteca")

$^2::
     if (KMD_KommandMode == true)
          Send, #2
     else
          Send, ^2
return

#3:: Start("C:\Vast")

$^3::
     if (KMD_KommandMode == true)
          Send, #3
     else
          Send, ^3
return

#4:: Start("C:\Downloads")
#+4:: Start("C:\Files\Public")

$^4::
     if (KMD_KommandMode == true)
          Send, #4
     else
          Send, ^4
return

#5:: Start("C:\Kylir")

#+5:: 
     Start(UserProfile)
return

$^5::
     if (KMD_KommandMode == true)
          Send, #5
     else
          Send, ^5
return

#6:: Start("C:\Mindy")

$^6::
     if (KMD_KommandMode == true)
          Send, #6
     else
          Send, ^6
return

#7:: Start("C:\Resources")

$^7::
     if (KMD_KommandMode == true)
          Send, #7
     else
          Send, ^7
return

#8:: Start("C:\Application")

$^8::
     if (KMD_KommandMode == true)
          Send, #8
     else
          Send, ^8
return

#9:: Start("C:\Program Files (x86)")
#+9:: Start("C:\Program Files")

$^9::
     if (KMD_KommandMode == true)
          Send, #9
     else
          Send, ^9
return

#0:: Start("Control")
#+0:: Start("C:\Windows")

$^0::
     if (KMD_KommandMode == true)
          Send, #0
     else
          Send, ^0
return

; Letters ======================================================= ;
#a:: Start("C:\Files")
;#b:: Start("Highlight System Tray")
#c:: Start("C:\Program Files\Adobe\Adobe Photoshop CS4 (64 Bit)\Photoshop.exe")

#+c::
     if WinExist("ahk_class ConsoleWindowClass")
          WinActivate
     else
          Start("cmd")
return

#d:: WinClose A
#+d:: Start("Utilities\CloseWindows.exe")
#^d:: Send #d
;#e:: Start("Computer")

#f::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}5b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return

#+f::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}6b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return

#^f:: Send #f
#g:: Start("C:\Program Files (x86)\iTunes\iTunes.exe")
#h:: Start("C:\Program Files\Windows Media Player\wmplayer.exe /prefetch:1")
#i:: Start("C:\Program Files (x86)\Pidgin\pidgin.exe")
#+i:: Start("C:\Windows\system32\inetsrv\iis.msc")
#j:: Start("C:\Junk")
#+j:: Start("C:\Projects")

#k:: KMD_StartKommandMode(false)
#l::
     sleep 1000
     SendMessage, 0x112, 0xF170, 2,, Program Manager
return

#m:: Start("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\GameExplorer.lnk")

#n::
     if WinExist("ahk_class Vim")
          WinActivate
     else
          Start("C:\Program Files (x86)\Vim\vim73\gvim.exe")
return

#+n:: Start("C:\Junk\Notes")
#!n:: Start("C:\Program Files (x86)\Notepad++\notepad++.exe")
#o:: Start("C:\Videos")
#p:: Start("C:\Pictures")

#q::
     if WinExist("ahk_class CalcFrame")
          WinActivate
     else
          Start("C:\Windows\system32\calc.exe")
return

;#r:: Run "Open Run" dialog
#+r:: Start("regedit")
#s:: Start("explorer.exe ftp://www.kylirhorton.com")
#+s:: Start("C:\Program Files (x86)\Allway Sync\Bin\syncappw.exe")
#t:: Start("C:\Windows\system32\mstsc.exe")
#^t:: Start("https://secure.logmein.com/computers.asp")
#u:: Start("C:\Program Files (x86)\uTorrent\uTorrent.exe")

#^u::
     if (A_ComputerName = "JENIVICE")
          Run Custom\JeniviceSvnUpdate.bat,,UseErrorLevel
     else if (A_ComputerName = "NANPHI")
          Run Custom\NanphiSvnUpdate.bat,,UseErrorLevel
return

#!u::
     if (A_ComputerName = "JENIVICE")
     {
          Run Utilities\WUInstall.exe /install,,UseErrorLevel
          Run C:\Program Files (x86)\FileHippo\UpdateChecker.exe,,UseErrorLevel
          Run Custom\JeniviceSvnUpdate.bat,,UseErrorLevel
          Run C:\Program Files (x86)\iTunes\iTunes.exe,,UseErrorLevel
          Run C:\Program Files (x86)\PIXELA\ImageMixer 3 SE\IMx3Launcher.exe,,UseErrorLevel
          Run C:\Program Files (x86)\Nikon\Nikon Transfer\NktTransfer.exe,,UseErrorLevel
          Run C:\Program Files\Eclipse\eclipse.exe,,UseErrorLevel
     }
     else if (A_ComputerName = "NANPHI")
     {
          Run Utilities\WUInstall.exe /install,,UseErrorLevel
          Run Custom\NanphiSvnUpdate.bat,,UseErrorLevel
     }
return

#v::
     if WinExist("Microsoft Visual Studio")
          WinActivate
     else
          Start("C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe")
return

#+v::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}7b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return

#^v::
     if WinExist("ahk_class SWT_Window0")
          WinActivate
     else
          Start("C:\Program Files\Eclipse\eclipse.exe")
return

#w:: KMD_StartViperMode(false)

#x::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}2b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return

#y:: Start("C:\Program Files (x86)\Yahoo!\Widgets\YahooWidgets.exe")

#z::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}8b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
return

#+z::
     if WinExist("ahk_class MozillaWindowClass")
     {
          WinActivate
          Send, {Escape}{Escape}{Escape}8b
     }
     else
          Start("C:\Program Files (x86)\Mozilla Firefox\firefox.exe --profilemanager")
return

; Function Keys ================================================= ;

#F1:: Start(UserProfile "\AppData\Local\Google\Chrome\Application\chrome.exe")
#F2:: Start("C:\Program Files (x86)\Internet Explorer\iexplore.exe")
#F3:: Start("C:\Program Files (x86)\Safari\Safari.exe")
#F4:: Start("C:\Program Files (x86)\Opera\Opera.exe")
#F5:: Start("winword")
#F6:: Start("excel")
#F7:: Start("powerpnt")
#F8:: Start("onenote")
#F9:: Start("C:\Program Files (x86)\Adobe\Adobe Illustrator CS4\Support Files\Contents\Windows\Illustrator.exe")
#F10:: Start("C:\Program Files (x86)\Adobe\Adobe InDesign CS4\InDesign.exe")
#F11:: Start("C:\Program Files (x86)\NexusFont\NexusFont.exe")
#F12:: Reload
