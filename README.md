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



