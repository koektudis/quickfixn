echo off

set MSBUILD_PATH=%1
set TARGET=%2
set CONFIGURATION=%3
set NET_VERSION=%4
set TOOLS_VERSION=%5

if "%1" == "" set MSBUILD_PATH=C:\Program Files (x86)\MSBuild\14.0\Bin\
if "%2" == "" set TARGET=Rebuild
if "%3" == "" set CONFIGURATION=Release
if "%4" == "" set NET_VERSION=v4.5.2
if "%5" == "" set TOOLS_VERSION=14.0

set BUILD_CMD="%MSBUILD_PATH%MSBuild.exe" QuickFIXn.sln /t:%TARGET% /p:Configuration=%CONFIGURATION%;TargetFrameworkVersion=%NET_VERSION% /tv:%TOOLS_VERSION%
echo Build command: %BUILD_CMD%
%BUILD_CMD%
