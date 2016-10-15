echo off

set RESULT=0

pushd UnitTests\bin\Release\
    if exist TestResult.xml del TestResult.xml
    if exist UnitTests.html del UnitTests.html
    "C:\Program Files (x86)\NUnit-3.5.0\bin\net-4.5\nunitlite-runner.exe" UnitTests.dll
    if ERRORLEVEL 1 set RESULT=1
popd

exit /B %RESULT%
