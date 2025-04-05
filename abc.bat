@echo off
setlocal enabledelayedexpansion

:: Generar nuevos GUIDs
set "newMachineGuid=!random!!random!!random!!random!-!random!!random!!random!!random!-!random!!random!!random!!random!-!random!!random!!random!!random!-!random!!random!!random!!random!!random!!random!!random!!random!"
set "newHwProfileGuid=!random!!random!!random!!random!-!random!!random!!random!!random!-!random!!random!!random!!random!-!random!!random!!random!!random!-!random!!random!!random!!random!!random!!random!!random!!random!"

:: Actualizar MachineGuid
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /d "{%newMachineGuid%}" /f

:: Actualizar HwProfileGuid
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid /d "{%newHwProfileGuid%}" /f

echo Nuevos GUIDs generados y actualizados:
echo MachineGuid: %newMachineGuid%
echo HwProfileGuid: %newHwProfileGuid%
endlocal