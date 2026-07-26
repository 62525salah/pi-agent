FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash ca-certificates git ripgrep tmux && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g --ignore-scripts @earendil-works/pi-coding-agent

WORKDIR /workspace
# Keep container alive so we can docker exec in to run pi interactively
CMD ["sleep", "infinity"]
