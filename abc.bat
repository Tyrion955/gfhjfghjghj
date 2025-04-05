@echo off
setlocal enabledelayedexpansion

:: Generar nuevo HwProfileGuid en el formato {xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}
echo Generando nuevo HwProfileGuid...
for /f %%a in ('powershell -command "[guid]::NewGuid().ToString()"') do set HwProfileGuid={%%a}
echo Nuevo HwProfileGuid: %HwProfileGuid%

:: Generar nuevo MachineGuid en el formato xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
echo Generando nuevo MachineGuid...
for /f %%a in ('powershell -command "[guid]::NewGuid().ToString()"') do set MachineGuid=%%a
echo Nuevo MachineGuid: %MachineGuid%

:: Mostrar comandos para actualizar los valores en el registro
echo.
echo Para actualizar estos valores en el registro, ejecuta los siguientes comandos como administrador:
echo.
echo reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid /t REG_SZ /d "%HwProfileGuid%" /f
echo reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d "%MachineGuid%" /f
echo.
pause
