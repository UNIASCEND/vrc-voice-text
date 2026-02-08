# Rust の Dev Container ベースイメージ
FROM mcr.microsoft.com/devcontainers/rust:latest

RUN apt-get update

# Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_24.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g yarn

# その他必要なツール
RUN apt-get install -y \
  build-essential \
  libgtk-3-dev

# clean
RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/*
