��
@echo off
cls

:menu
color 3 
cls
title krnl installer/updater V2.8
echo 88      a8P                             88  
echo 88    ,88'                              88  
echo 88  ,88"                                88  
echo 88,d88'       8b,dPPYba,   8b,dPPYba,   88  
echo 8888"88,      88P'    "Y8  88P'   `"8a  88  
echo 88P   Y8b     88           88       88  88  
echo 88     "88,   88           88       88  88  
echo 88       Y8b  88           88       88  88                                             
echo ------------------------------------
echo you get key from https://cdn.krnl.ca/getkey.php
echo 1 for installer  
echo 2 for updater
echo 3 for ways to contact me
set /p eh= ^> 
if %eh%==1 goto installer
if %eh%==2 goto updater
if %eh%==3 goto contact

:installer
cls
echo Please put the folder directory on where you want krnl to be installer
echo (make sure you meet the requirements for krnl)
echo (make sure it is excluded from your antivirus)
echo Example: C:\Users\boi_you_thought\Downloads
set /p eh=type here ^> 
cd %eh%
MD krnl
cd krnl
MD bin
cd krnl
color 5
cls
title installing krnl ; )
echo if there is a error/problem with the updater please contact me at bm3099912@gmail.com or use support menu
echo -------------------------------------------------------------------------------------------------------------------
curl -s https://k-storage.com/bootstrapper/files/Bunifu_UI_v1.5.3.dll --output Bunifu_UI_v1.5.3.dll
curl -s https://k-storage.com/bootstrapper/files/ScintillaNET.dll --output ScintillaNET.dll
curl -s https://k-storage.com/bootstrapper/files/krnl.dll --output krnl.dll 
curl -s https://k-storage.com/bootstrapper/files/krnlss.exe --output krnlss.exe
curl -s https://k-storage.com/bootstrapper/files/krnlss.exe.config --output krnlss.exe.config
echo almost done
cd bin
curl -s https://k-storage.com/bootstrapper/files/bin/Bunifu_UI_v1.5.3.dll --output Bunifu_UI_v1.5.3.dll
curl -s https://k-storage.com/bootstrapper/files/bin/Monaco.zip --output Monaco.zip 
curl -s https://k-storage.com/bootstrapper/files/bin/ScintillaNET.dll --output ScintillaNET.dll
curl -s https://k-storage.com/bootstrapper/files/bin/src.7z --output src.7z
curl -s https://cdn.discordapp.com/attachments/796182836632748052/812317719793107004/7za.exe --output 7za.exe
7za x src.7z -aoa 
7za x Monaco.zip -aoa 
del 7za.exe
del src.7z
del Monaco.zip
cls                 
title Done :D                          
color 2         
echo 88888888ba,                                          
echo 88      `"8b                                         
echo 88        `8b                                        
echo 88         88   ,adPPYba,   8b,dPPYba,    ,adPPYba,  
echo 88         88  a8"     "8a  88P'   `"8a  a8P_____88  
echo 88         8P  8b       d8  88       88  8PP"""""""  
echo 88      .a8P   "8a,   ,a8"  88       88  "8b,   ,aa  
echo 88888888Y"'     `"YbbdP"'   88       88   `"Ybbd8"'                                                     
TIMEOUT 10
goto menu

:updater
cls
echo Please put the folder directory on where krnl is 
echo Example: C:\Users\yaboi\Downloads\krnl
set /p eh=type here ^> 
cd %eh%
cls
color 5
title updating krnl ; )
echo if there is a error/problem with the updater please contact me at bm3099912@gmail.com
curl -s https://k-storage.com/bootstrapper/files/krnl.dll --output krnl.dll 
cls         
title Done :D                                  
color 2         
echo 88888888ba,                                          
echo 88      `"8b                                         
echo 88        `8b                                        
echo 88         88   ,adPPYba,   8b,dPPYba,    ,adPPYba,  
echo 88         88  a8"     "8a  88P'   `"8a  a8P_____88  
echo 88         8P  8b       d8  88       88  8PP"""""""  
echo 88      .a8P   "8a,   ,a8"  88       88  "8b,   ,aa  
echo 88888888Y"'     `"YbbdP"'   88       88   `"Ybbd8"'                                                     
TIMEOUT 10
goto menu

:contact
cls
echo Discord: Lego Person#1225
echo email: bm3099912@gmail.com
pause
goto menu

cmd /k