apt update && apt upgrade -y
mkdir plugins
wget https://github.com/playit-cloud/playit-minecraft-plugin/releases/latest/download/playit-minecraft-plugin.jar
wget https://hangarcdn.papermc.io/plugins/ViaVersion/ViaVersion/versions/4.9.2/PAPER/ViaVersion-4.9.2.jar
wget https://hangarcdn.papermc.io/plugins/ViaVersion/ViaBackwards/versions/4.9.1/PAPER/ViaBackwards-4.9.1.jar
mv playit-minecraft-plugin.jar plugins
mv ViaBackwards-4.9.1.jar plugins
mv ViaVersion-4.9.2.jar
bash startthesrv.sh
