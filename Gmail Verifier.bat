@if (@CodeSection == @Batch) @then


@echo off
title Gmail Verifier


echo ######   ##     ##    ###    #### ##          ##     ## ######## ########  #### ######## #### ######## ########  
echo ##    ##  ###   ###   ## ##    ##  ##          ##     ## ##       ##     ##  ##  ##        ##  ##       ##     ## 
echo ##        #### ####  ##   ##   ##  ##          ##     ## ##       ##     ##  ##  ##        ##  ##       ##     ## 
echo ##   #### ## ### ## ##     ##  ##  ##          ##     ## ######   ########   ##  ######    ##  ######   ########  
echo ##    ##  ##     ## #########  ##  ##           ##   ##  ##       ##   ##    ##  ##        ##  ##       ##   ##   
echo ##    ##  ##     ## ##     ##  ##  ##            ## ##   ##       ##    ##   ##  ##        ##  ##       ##    ##  
echo  ######   ##     ## ##     ## #### ########       ###    ######## ##     ## #### ##       #### ######## ##     ## 
echo -
echo ------------------------------------------------------------------------------------------------------------------
color a
set SendKeys=CScript //nologo //E:JScript "%~F0"
set /p input= Mail to verify:

START CHROME "https://www.emailsverified.com/gmail-availability-checker/"

timeout 2


%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "%input%"
%SendKeys% "{ENTER}"


goto :EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));







