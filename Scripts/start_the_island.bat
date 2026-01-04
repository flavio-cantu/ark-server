@echo off
REM The Island usando arquivos compartilhados

set SHARED_FILES=E:\ark-server\ServerFiles
set SHARED_EXE=%SHARED_FILES%\ShooterGame\Binaries\Win64\ShooterGameServer.exe

set INSTANCE_MAP=TheIsland
set INSTANCE_PORT=7777
set INSTANCE_QUERYPORT=27015 
set INSTANCE_RCONPORT=27020
set INSTANCE_SAVEDIR=Save_TheIsland

set CLUSTER_ID=CLUSTER_HASH
set SHARED_CLUSTER_DIR=E:\ark-server\Cluster
set SERVER_NAME=NomeServer_The-Island
set MAX_PLAYERS=5

echo Iniciando The Island...

REM Iniciar servidor com os parâmetros CORRETOS para usar pastas da instância
cmd /k ""%SHARED_EXE%" %INSTANCE_MAP%?MaxPlayers=%MAX_PLAYERS%?PreventOfflinePvP=true?listen?SessionName=%SERVER_NAME%?Port=%INSTANCE_PORT%?QueryPort=%INSTANCE_QUERYPORT% -clusterid=%CLUSTER_ID% -ClusterDirOverride=%SHARED_CLUSTER_DIR% -NoTransferFromFiltering -AltSaveDirectoryName=%INSTANCE_SAVEDIR% -game -server -UseBattlEye"
