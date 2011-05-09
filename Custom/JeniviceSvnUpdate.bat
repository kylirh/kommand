@echo off
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%
echo Updating Cityworks...
TortoiseProc.exe /command:update /path:"C:\Files\Cityworks" /closeonend:2

echo DONE!%NL%%NL%Updating Service Pack...
TortoiseProc.exe /command:update /path:"C:\Files\Service Pack" /closeonend:2

echo DONE!%NL%%NL%Updating Vast...
TortoiseProc.exe /command:update /path:"C:\Files\Vast" /closeonend:2

echo DONE!%NL%%NL%Updating Desktop...
TortoiseProc.exe /command:update /path:"C:\Files\Desktop" /closeonend:2

echo DONE!%NL%%NL%Updating Kommand...
TortoiseProc.exe /command:update /path:"C:\Files\Application\Kommand" /closeonend:2

echo DONE!
