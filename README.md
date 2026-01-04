# Servidor de ark (Windows)

Scripts para construção de um server cluster no Ark survival

# 1) Baixando

Na pasta scripts configure o arquivo `init-update.bat`.

Altere as variávels para o respectivo caminho absoluto da sua máquina:

```
set STEAMCMD_DIR=E:\ark-server\SteamCMD
set SERVER_FILES=E:\ark-server\ServerFiles
```

Demora bastante. Tenha paciência.

# 2) Configurando

Na pasta Template/ServerConfig tem 2 arquivos base.
A documentação pra eles se encontra (aqui)[https://ark.fandom.com/wiki/Server_configuration].

Copie esses dois arquivos `Game.ini` e `GameUserSettings.ini` para ServerFiles/ShooterGame/Saved/Config/WindowsServer e faça as modificações de sua preferência. A base do arquivo está para 5x.

Coisas que precisa ajustar:

- ServerPassword
- ServerAdminPassword

As configurações comuns entre os mapas estarão todas nesses 2 arquivos.

# 3) Criando instancias

Como exemplo deixei duas instancias configuradas. The island e Scorched earth.
Na pasta scrips vai encontrar dois start...bat. Um para cada mapa.

Aqui precisa configurar:

- Hash único para o cluster `CLUSTER_ID` (todos os bats precisam ter exatamente o mesmo)
- O nome do server que deve ser único `SERVER_NAME`
- Não pode conflitar as portas(Caso crie novas instancias, tenha isso em mente)
- Ajustar o diretório do parametro `SHARED_CLUSTER_DIR`

# 4) Exposição para steam

Com exceção das portas RCONPORT as demais devem estar expostas na internet. Mas não é responsabilidade desse tutorial apresentar como fazer port fowarding.

# 5) Conexão

Com ark aberto o servidor já deve aparecer na lista.
Importante lembrar de filtrar por 'servidores não oficiais'.
E dentro do mapa, pra usar o cluster, se houver senha, lembre-se de no canto inferior esquerto de marcar a opção que apresenta servidores com senha.

Bom jogo!
