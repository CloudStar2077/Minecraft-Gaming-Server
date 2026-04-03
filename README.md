# Minecraft-Gaming-Server
Setup and host your own Java based Minecraft Gaming Server in a Docker Container 

# Table of Contents

1. [Prerequisites](#Prerequisites) 
2. [Quickstart](#Quickstart) 
3. [Usage](#Usage)

## PREREQUISITES

- Docker (version 20.10 or higher) installed
- Git installed
- python 3 installed

## Quickstart

- Clone Repository then Rename 

```bash
git clone git@github.com:CloudStar2077/Minecraft-Gaming-Server.git
cd Minecraft-Gaming-Server
mv example.env .env  # rename the example.env to .env
 ```
- Build docker image
```bash
docker compose build
```  
- Run the Container
```bash
docker compose up -d
```
- Install McStatus
```bash
python3 -m pip install mcstatus
 ```
Check Server Status:

```bash
mcstatus <hostIP>:8888 status
```

## Usage

For this Setup a default Minecraft base image doesn't make sense, because we want to have full control over the environment. For the Base Image an Open-Source Java-Distribution 
is used. The Minecraft Server Core is downloaded by the `entrypoint.sh` which also accepts the End User License Agreement and starts the server on port 8888 with no graphical user
interface. Since this is for documentation purpose and the system hardware is limited the server runs with min 1G and max 2G RAM. For more memory You can adjust the RAM Variables 
in the `.env`.
```bash
JAVA_MIN_RAM=1G
JAVA_MAX_RAM=2G
 ```   








Go to ```https://www.minecraft.net/de-de/download``` and copy the Minecraft Java Download URL into the .env
The placeholder is `MC_URL=`



