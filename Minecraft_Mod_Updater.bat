echo off
color 09
echo Minecraft Mod Updater 
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

powershell.exe Invoke-WebRequest -Uri /UpdaterFiles1181.zip -OutFile "%USERPROFILE%\Desktop\temp\UpdaterFiles1181.zip" && (
  color 0A
  echo Success!
  echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
  color 04
  echo Failed!
  echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\UpdaterFiles1181.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
  color 0A
  echo Success!
  echo Extracted the downloaded zip, now on to updating the mods.
) || (
  color 04
  echo Failed!
  echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\ForgeMods1181.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
  color 0A
  echo Success!
  echo Update complete, now to clean up some files.
) || (
  color 04
  echo Failed!
  echo Mods failed to update, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
  color 0A
  echo Success!
  echo You can now launch Minecraft and play!
) || (
  color 04
  echo Failed!
  echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause

:1201
mkdir %USERPROFILE%\Desktop\temp
RD /S /Q "%USERPROFILE%\AppData\Roaming\.minecraft\mods"

powershell.exe Invoke-WebRequest -Uri /UpdaterFiles1201.zip -OutFile "%USERPROFILE%\Desktop\temp\UpdaterFiles1201.zip" && (
  color 0A
  echo Success!
  echo Downloaded latest update, now on to extracting the downloaded zip.
) || (
  color 04
  echo Failed!
  echo Failed to download latest update, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\UpdaterFiles1201.zip" -DestinationPath "%USERPROFILE%\Desktop\temp\RequiredFiles" -Force && (
  color 0A
  echo Success!
  echo Extracted the downloaded zip, now on to updating the mods.
) || (
  color 04
  echo Failed!
  echo Extraction failed, please take a screenshot and send it to RTech so he can help.
)
pause

powershell.exe -c Expand-Archive -Path "%USERPROFILE%\Desktop\temp\RequiredFiles\ForgeMods1201.zip" -DestinationPath "%USERPROFILE%\AppData\Roaming\.minecraft\mods" -Force && (
  color 0A
  echo Success!
  echo Update complete, now to clean up some files.
) || (
  color 04
  echo Failed!
  echo Mods failed to update, please take a screenshot and send it to RTech so he can help.
)
pause

RD /S /Q "%USERPROFILE%\Desktop\temp" && (
  color 0A
  echo Success!
  echo You can now launch Minecraft and play!
) || (
  color 04
  echo Failed!
  echo Clean up failed, please take a screenshot and send it to RTech so he can help.
)
pause

exit