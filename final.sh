
#!/bin/bash
rm -r startthesrv.sh
rm -r jdk-17
# Set environment variables
export JAVA_HOME=$(pwd)/jdk-17
export PATH=$JAVA_HOME/bin:$PATH

# Update the system alternatives
sudo update-alternatives --install /usr/bin/java java $JAVA_HOME/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac $JAVA_HOME/bin/javac 1

java -Xmx4G -Xms4G -jar server.jar nogui
