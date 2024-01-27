Echo "Limpeza do cache FiveM"
Echo "Diretórios a serem limpos server-cache-priv, cache ,server-cache"

pause

#Definição das variáveis
#Pega o nome e o local dos arquivos do usuário atual e armazena
$user= $env:USERPROFILE
#Local onde o FiveM está instalado
$fivem = '\AppData\Local\FiveM\FiveM.app\data\'
#Recebe o local dos arquivos do usuário e da instalação do FiveM e concatena em uma string de diretório
$path = $user+$fivem
#Navegando ate o diretório do FiveM
cd $path

#Testa se oo diretórios existem se existir deleta se não printa na tela
if (Test-Path -Path $path'\server-cache-priv') {
    Echo "Apagando \server-cache-priv"
    Remove-Item $path'\server-cache-priv' -Recurse -Force
} else {
   Echo  "Diretório server-cache-priv não exite"
}

if (Test-Path -Path $path'\cache') {
    Echo "Apagando cache"
    Remove-Item $path'\cache' -Recurse -Force
} else {
   Echo  "Diretório cache não exite"
}

if (Test-Path -Path $path'\server-cache') {
    Echo "Apagando server-cache"
    Remove-Item $path'\server-cache' -Recurse -Force
} else {
   Echo  "Diretório server-cache não exite"
}

#Printa o conteudo do diretório na tela
dir $path

pause
