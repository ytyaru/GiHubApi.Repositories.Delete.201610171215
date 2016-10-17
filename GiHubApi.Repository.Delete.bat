@echo off
set GITHUB_USER=YourUserName
set GITHUB_TOKEN=YourAccessToken
for %%I in (.) do set REPO_NAME=%%~nI%%~xI

:question
echo �ΏہF%GITHUB_USER%/%REPO_NAME%
SET /P ANSWER="���|�W�g�����폜���܂����H (Y/N)?"
if "%answer%"=="y" (
  call :yes
) else if "%answer%"=="Y" ( 
  call :yes
) else if "%answer%"=="n" ( 
  call :no
) else if "%answer%"=="N" ( 
  call :no
)else (
  call :question
)
exit

:yes
set CURL_PEM=C:\Program Files\Git\ssl\certs\cacert.pem
set HDR_AUTHOR="Authorization: token %GITHUB_TOKEN%"
curl --cacert "%CURL_PEM%" -X DELETE -H %HDR_AUTHOR% https://api.github.com/repos/%GITHUB_USER%/%REPO_NAME% | nkf -s
rmdir /S /Q .git
echo �폜���܂����B
pause
exit

:no
echo �폜�����I�����܂��B
pause
exit

pause
@echo on
