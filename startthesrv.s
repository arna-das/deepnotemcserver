
#!/bin/bash
SERVER_JAR_LINK="https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/365/downloads/paper-1.20.4-365.jar"
wget "$SERVER_JAR_LINK" -O server.jar
echo "eula=true" > eula.txt
echo "online-mode=false" >> server.properties
java -Xmx1G -Xms1G -jar server.jar nogui
