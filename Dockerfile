FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash ca-certificates git ripgrep tmux && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g --ignore-scripts @earendil-works/pi-coding-agent

# Install DeepInfra custom provider extension
RUN mkdir -p /root/.pi/agent/extensions/deepinfra
COPY deepinfra/index.ts /root/.pi/agent/extensions/deepinfra/index.ts

WORKDIR /workspace
CMD ["sleep", "infinity"]
