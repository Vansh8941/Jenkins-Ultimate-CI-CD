FROM maven:3.9.0-eclipse-temurin-17

USER root
RUN apt-get update && \
    apt-get install -y docker.io git curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

# Keep container running for Jenkins agent
ENTRYPOINT ["tail", "-f", "/dev/null"]
