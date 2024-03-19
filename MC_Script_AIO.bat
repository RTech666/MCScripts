echo off
echo.
color 09
echo Minecraft AIO Script
echo Idea by Ulf, script made by RTech, if you have any issues contact RTech on Discord.
@pause

REM ask the user what version they want
echo.
echo Please choose the version you want to play:
echo 1. Forge 1.20.1
echo 2. Forge 1.18.1 (not active)
Choice /c 12 /m "Enter your choice: "
if errorlevel 2 goto 1181
if errorlevel 1 goto 1201

REM if user chose Forge 1.20.1
:1201
echo.
echo Selected Forge 1.20.1
echo.
echo What would you like to do?
echo 1. Setup Forge (Never played on the server before)
echo 2. Update Mods (Have played on the server before)
Choice /c 12 /m "Enter your choice: "
if errorlevel 2 goto up1201
if errorlevel 1 goto in1201

REM if user chose Forge 1.18.1
:1181
echo.
echo Selected Forge 1.18.1
echo.
echo What would you like to do?
echo 1. Setup Forge (Never played on the server before)
echo 2. Update Mods (Have played on the server before)
Choice /c 12 /m "Enter your choice: "
if errorlevel 2 goto up1181
if errorlevel 1 goto in1181

REM if user chose to update mods for 1.20.1, run the script below
:up1201
mkdir %USERPROFILE%\Desktop\temp
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\mods"

powershell.exe Invoke-WebRequest -Uri https://hotboxservers.net/mc/up1201.zip -OutFile "%USERPROFILE%\Desktop\temp\up1201.zip" && (
    echo.
    color 0A
    echo Success!
    echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
    echo.
    color 04
    echo Failed!
    echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\up1201.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
    echo.
    color 0A
    echo Success!
    echo Extracted the downloaded zip, now on to updating the mods.
) || (
    echo.
    color 04
    echo Failed!
    echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\mods1201.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
    echo.
    color 0A
    echo Success!
    echo Update complete, now to clean up some files.
) || (
    echo.
    color 04
    echo Failed!
    echo Mods failed to update, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
    echo.
    color 0A
    echo Success!
    echo You can now launch Minecraft and play!
) || (
    echo.
    color 04
    echo Failed!
    echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause
exit

REM is user chose to setup forge for 1.20.1, run the script below
:in1201
mkdir %USERPROFILE%\Desktop\temp
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\mods"
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\launcher_profiles.json"

powershell.exe Invoke-WebRequest -Uri https://hotboxservers.net/mc/in1201.zip -OutFile "%USERPROFILE%\Desktop\temp\in1201.zip" && (
    echo.
    color 0A
    echo Success!
    echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
    echo.
    color 04
    echo Failed!
    echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\in1201.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
    echo.
    color 0A
    echo Success!
    echo Extracted the downloaded zip, now on to the installation.
) || (
    echo.
    color 04
    echo Failed!
    echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\libraries" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
    echo.
    color 0A
    echo Success!
    echo Forge libraries installed, now on to installing the versions.
) || (
    echo.
    color 04
    echo Failed!
    echo Forge libraries failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\versions" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
    echo.
    color 0A
    echo Success!
    echo Forge versions installed, now on to installing the mods.
) || (
    echo.
    color 04
    echo Failed!
    echo Forge versions failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\mods1201.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
    echo.
    color 0A
    echo Success!
    echo Now on to installing the hotfix. The hotfix will allow Minecraft to use up to 8GB of RAM, rather than the default 2GB of RAM.
) || (
    echo.
    color 04
    echo Failed!
    echo Mods failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\launcher_profiles.json" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
    echo.
    color 0A
    echo Success!
    echo Hotfix installed, now to clean up some files.
) || (
    echo.
    color 04
    echo Failed!
    echo Hotfix failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
    echo.
    color 0A
    echo Success!
    echo You can now launch Minecraft, add the server, and play!
) || (
    echo.
    color 04
    echo Failed!
    echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause
exit

REM if user chose to update mods for 1.18.1, run the script below
:up1181
mkdir %USERPROFILE%\Desktop\temp
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\mods"

powershell.exe Invoke-WebRequest -Uri http://sitehere.com -OutFile "%USERPROFILE%\Desktop\temp\UpdaterFiles1181.zip" && (
    echo.
    color 0A
    echo Success!
    echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
    echo.
    color 04
    echo Failed!
    echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\UpdaterFiles1181.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
    echo.
    color 0A
    echo Success!
    echo Extracted the downloaded zip, now on to updating the mods.
) || (
    echo.
    color 04
    echo Failed!
    echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\ForgeMods1181.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
    echo.
    color 0A
    echo Success!
    echo Update complete, now to clean up some files.
) || (
    echo.
    color 04
    echo Failed!
    echo Mods failed to update, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
    echo.
    color 0A
    echo Success!
    echo You can now launch Minecraft and play!
) || (
    echo.
    color 04
    echo Failed!
    echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause
exit

REM if user chose to setup forge for 1.18.1, run the script below
:in1181
mkdir %USERPROFILE%\Desktop\temp
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\mods"
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\launcher_profiles.json"

powershell.exe Invoke-WebRequest -Uri http://sitehere.com -OutFile "%USERPROFILE%\Desktop\temp\InstallerFiles1181.zip" && (
    echo.
    color 0A
    echo Success!
    echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
    echo.
    color 04
    echo Failed!
    echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\InstallerFiles1181.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
    echo.
    color 0A
    echo Success!
    echo Extracted the downloaded zip, now on to the installation.
) || (
    echo.
    color 04
    echo Failed!
    echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\libraries" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
    echo.
    color 0A
    echo Success!
    echo Forge libraries installed, now on to installing the versions.
) || (
    echo.
    color 04
    echo Failed!
    echo Forge libraries failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\versions" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
    echo.
    color 0A
    echo Success!
    echo Forge versions installed, now on to installing the mods.
) || (
    echo.
    color 04
    echo Failed!
    echo Forge versions failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\ForgeMods1181.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
    echo.
    color 0A
    echo Success!
    echo Now on to installing the hotfix. The hotfix will allow Minecraft to use up to 8GB of RAM, rather than the default 2GB of RAM.
) || (
    echo.
    color 04
    echo Failed!
    echo Mods failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\launcher_profiles.json" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
    echo.
    color 0A
    echo Success!
    echo Hotfix installed, now to clean up some files.
) || (
    echo.
    color 04
    echo Failed!
    echo Hotfix failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
    echo.
    color 0A
    echo Success!
    echo You can now launch Minecraft, add the server, and play!
) || (
    echo.
    color 04
    echo Failed!
    echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause
exit