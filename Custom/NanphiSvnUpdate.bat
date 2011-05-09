@echo off
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%
echo Updating Cityworks...
TortoiseProc.exe /command:update /path:"C:\Files\Cityworks" /closeonend:2

echo DONE!%NL%%NL%Updating 2010.1 Service Pack...
TortoiseProc.exe /command:update /path:"C:\Files\2010.1" /closeonend:2

echo DONE!%NL%%NL%Updating 2011 Service Pack...
TortoiseProc.exe /command:update /path:"C:\Files\2011" /closeonend:2

echo DONE!%NL%%NL%Updating Kommand...
TortoiseProc.exe /command:update /path:"C:\Files\Application\Kommand" /closeonend:2
echo DONE!
