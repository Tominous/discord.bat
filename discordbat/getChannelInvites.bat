@echo off
call ratelimitcheck.bat
if "%isratelimited%"=="1" timeout 5 >nul
call batchhttp.bat "https://discordapp.com/api/v6/channels/%channel%/invites" -method GET -headers-file header.txt -saveTO response.txt
if %debug% equ true echo [%date% - %time%] Got invites ^| Channel %channel% >>output.log