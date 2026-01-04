@echo off
REM Baixa UMA unica copia dos arquivos do servidor

set STEAMCMD_DIR=E:\ark-server\SteamCMD
set SERVER_FILES=E:\ark-server\ServerFiles

if not exist "%STEAMCMD_DIR%\steamcmd.exe" (
    echo Instalando SteamCMD...
    mkdir "%STEAMCMD_DIR%" 2>nul
    powershell -Command "Invoke-WebRequest -Uri 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip' -OutFile '%STEAMCMD_DIR%\steamcmd.zip'"
    powershell -Command "Expand-Archive -Path '%STEAMCMD_DIR%\steamcmd.zip' -DestinationPath '%STEAMCMD_DIR%' -Force"
    del "%STEAMCMD_DIR%\steamcmd.zip"
)

echo.
echo Baixando/atualizando arquivos do servidor ARK...
echo.

"%STEAMCMD_DIR%\steamcmd.exe" +force_install_dir "%SERVER_FILES%" +login anonymous +app_update 376030 validate +quit

echo.
echo Arquivos principais prontos em: %SERVER_FILES%