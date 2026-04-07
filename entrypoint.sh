#!/bin/bash

if [ ! -f /app/server.jar ]; then
    echo "Downloading Minecraft Server ..."
    curl -fL -o /app/server.jar "$MC_URL"
fi

if [ ! -f /app/eula.txt ]; then
    echo "eula=true" > /app/eula.txt
fi

if [ ! -f /app/server.properties ]; then
    echo "server-port=${MC_PORT}" > /app/server.properties
fi

exec java -Xms${JAVA_MIN_RAM} -Xmx${JAVA_MAX_RAM} -jar /app/server.jar nogui