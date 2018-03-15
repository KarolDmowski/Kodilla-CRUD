call runcrud.bat

if "%ERRORLEVEL%" == "0" goto showTasks
echo.
echo runcrud has errors
goto fail

:showTasks
explorer http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" = "0" goto fail
echo.
echo showTask has errors
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.
