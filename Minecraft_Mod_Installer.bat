echo off
color 09
echo Minecraft Mod Installer  
echo Idea by Ulf, script made by RTech, if you have any issues contact RTech on Discord.
@pause

echo Please choose the version of the server you want to play:
echo 1. Forge 1.20.1
echo 2. Forge 1.18.1

Choice /c 12 /m "Enter your choice: "

if errorlevel 2 goto 1181
if errorlevel 1 goto 1201

:1181
mkdir %USERPROFILE%\Desktop\temp
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\mods"
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\launcher_profiles.json"

powershell.exe Invoke-WebRequest -Uri /InstallerFiles1181.zip -OutFile "%USERPROFILE%\Desktop\temp\InstallerFiles1181.zip" && (
  color 0A
  echo Success!
  echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
  color 04
  echo Failed!
  echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\InstallerFiles1181.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
  color 0A
  echo Success!
  echo Extracted the downloaded zip, now on to the installation.
) || (
  color 04
  echo Failed!
  echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\libraries" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
  color 0A
  echo Success!
  echo Forge libraries installed, now on to installing the versions.
) || (
  color 04
  echo Failed!
  echo Forge libraries failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\versions" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
  color 0A
  echo Success!
  echo Forge versions installed, now on to installing the mods.
) || (
  color 04
  echo Failed!
  echo Forge versions failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\ForgeMods1181.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
  color 0A
  echo Success!
  echo Now on to installing the hotfix. The hotfix will allow Minecraft to use up to 8GB of RAM, rather than the default 2GB of RAM.
) || (
  color 04
  echo Failed!
  echo Mods failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\launcher_profiles.json" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
  color 0A
  echo Success!
  echo Hotfix installed, now to clean up some files.
) || (
  color 04
  echo Failed!
  echo Hotfix failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
  color 0A
  echo Success!
  echo You can now launch Minecraft, add the server, and play!
) || (
  color 04
  echo Failed!
  echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause

:1201
mkdir %USERPROFILE%\Desktop\temp
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\mods"
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\launcher_profiles.json"

powershell.exe Invoke-WebRequest -Uri /InstallerFiles1201.zip -OutFile "%USERPROFILE%\Desktop\temp\InstallerFiles1201.zip" && (
  color 0A
  echo Success!
  echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
  color 04
  echo Failed!
  echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\InstallerFiles1201.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
  color 0A
  echo Success!
  echo Extracted the downloaded zip, now on to the installation.
) || (
  color 04
  echo Failed!
  echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\libraries" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
  color 0A
  echo Success!
  echo Forge libraries installed, now on to installing the versions.
) || (
  color 04
  echo Failed!
  echo Forge libraries failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\versions" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
  color 0A
  echo Success!
  echo Forge versions installed, now on to installing the mods.
) || (
  color 04
  echo Failed!
  echo Forge versions failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\ForgeMods1201.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
  color 0A
  echo Success!
  echo Now on to installing the hotfix. The hotfix will allow Minecraft to use up to 8GB of RAM, rather than the default 2GB of RAM.
) || (
  color 04
  echo Failed!
  echo Mods failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe Copy-Item -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\launcher_profiles.json" -Destination "%USERPROFILE%\AppData\Roaming\.minecraft" -Recurse -Force && (
  color 0A
  echo Success!
  echo Hotfix installed, now to clean up some files.
) || (
  color 04
  echo Failed!
  echo Hotfix failed to install, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
  color 0A
  echo Success!
  echo You can now launch Minecraft, add the server, and play!
) || (
  color 04
  echo Failed!
  echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause

exit