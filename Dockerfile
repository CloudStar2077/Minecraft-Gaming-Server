# Java Base Image
FROM eclipse-temurin:25-jre

# Set Working Directory 
WORKDIR /app

# Install Basis-Tools 
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Entrypoint Script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Port 
EXPOSE 8888

# Start Command
ENTRYPOINT ["/entrypoint.sh"]