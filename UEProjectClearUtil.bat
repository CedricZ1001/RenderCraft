@ECHO OFF
TITLE UEProjectClearUtil
echo=
echo=
echo ------------------------------
echo Current Path: %cd%
echo=
rem List all directories in the current path
dir /A/D /B
echo= 
rem Unreal Engine project files
echo ------------------------------
echo Cleaning project folders
call:DeleteDirectory ".vs"
call:DeleteDirectory "Build"
call:DeleteDirectory "Binaries"
call:DeleteDirectory "DerivedDataCache"
call:DeleteDirectory "Intermediate"
call:DeleteDirectory "Saved"
echo ------------------------------
echo Cleaning project files
call:DeleteFile ".vsconfig"
call:DeleteFile "*.sln"
echo ------------------------------
echo Cleaning plugin folders
for /d %%i in (Plugins\*) do (
    call:DeleteDirectory %%i\Binaries
    call:DeleteDirectory %%i\Intermediate
)
echo=
echo=

echo ------------------------------
echo=
echo Current Project Path: %cd%
echo=
dir /A/D /B
echo=
echo=
echo ------------------------------
echo Cleanup completed
echo=
echo=

pause

goto :eof

:DeleteFile
rem Loop through all matching files and delete them
for %%f in (%~1) do (
    if exist "%%f" (
        echo Deleting file: %%f
        del /s /q "%%f"
    )
)
goto :eof

:DeleteDirectory
if exist %~1 (
    echo Deleting directory: %~1
    rd /s /q %~1
)
goto :eof
