apt update && apt upgrade -y
mkdir plugins
wget https://github.com/playit-cloud/playit-minecraft-plugin/releases/latest/download/playit-minecraft-plugin.jar
mv playit-minecraft-plugin.jar plugins
bash onthesrv.sh
