@echo off
REM The Island usando arquivos compartilhados

set SHARED_FILES=E:\ark-server\ServerFiles
set SHARED_EXE=%SHARED_FILES%\ShooterGame\Binaries\Win64\ShooterGameServer.exe

set INSTANCE_MAP=ScorchedEarth_P
set INSTANCE_PORT=7779
set INSTANCE_QUERYPORT=27016
set INSTANCE_RCONPORT=27021
set INSTANCE_SAVEDIR=Save_ScorchedEarth

set CLUSTER_ID=CLUSTER_HASH
set SHARED_CLUSTER_DIR=E:\ark-server\Cluster
set SERVER_NAME=NomeServer_Scorched-Earth
set MAX_PLAYERS=5

echo Iniciando ScorchedEarth...

cmd /k ""%SHARED_EXE%" %INSTANCE_MAP%?MaxPlayers=%MAX_PLAYERS%?PreventOfflinePvP=true?listen?SessionName=%SERVER_NAME%?Port=%INSTANCE_PORT%?QueryPort=%INSTANCE_QUERYPORT% -clusterid=%CLUSTER_ID% -ClusterDirOverride=%SHARED_CLUSTER_DIR% -NoTransferFromFiltering -AltSaveDirectoryName=%INSTANCE_SAVEDIR% -game -server -UseBattlEye"
