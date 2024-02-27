
#!/bin/bash
rm -r start.sh
wget https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz
tar -xzvf openjdk-17_linux-x64_bin.tar.gz
export JAVA_HOME=$(pwd)/jdk-17
export PATH=$JAVA_HOME/bin:$PATH
sudo update-alternatives --install /usr/bin/java java $JAVA_HOME/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac $JAVA_HOME/bin/javac 1
SERVER_JAR_LINK="https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/365/downloads/paper-1.20.4-365.jar"
wget "$SERVER_JAR_LINK" -O server.jar
echo "eula=true" > eula.txt
echo "online-mode=false" >> server.properties
java -Xmx4G -Xms4G -jar server.jar nogui

mv final.sh start.sh
bash start.sh

