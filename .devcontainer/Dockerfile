# Rust の Dev Container ベースイメージ
FROM mcr.microsoft.com/devcontainers/rust:latest

RUN apt-get update

# Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_24.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g yarn

# libsoup 関連ライブラリ
RUN apt-get install -y \
  libsoup2.4-dev \
  javascriptcoregtk-4.1 \
  libsoup-3.0 \
  webkit2gtk-4.1 \
  libwebkit2gtk-4.1-dev

# その他必要なライブラリ
RUN apt-get install -y \
  build-essential \
  libgtk-3-dev \
  xdg-utils

# clean
RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/*
