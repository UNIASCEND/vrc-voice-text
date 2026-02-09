# Welcome VRC VoiceText

## 環境構築 (Windows)
### 必要なツール
 - [VS Code](https://code.visualstudio.com/)
   - [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
 - [WSL2](https://learn.microsoft.com/ja-jp/windows/wsl/setup/environment)
 - [Ubuntu 24.04 LTS](https://ubuntu.com/download/desktop)
 - [Docker](https://docs.docker.com/)
   1. [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
   2. [Linux post-installation steps for Docker Engine](https://docs.docker.com/engine/install/linux-postinstall/) (only "Manage Docker as a non-root user")

### Clone a Repository
```bash
# GitHub で予め fork しておく
git clone https://github.com/your_account/vrc-voice-text.git
cd vrc-voice-text
git remote add upstream https://github.com/UNIASCEND/vrc-voice-text.git
```

## 実行手順
### Start Dev Container
1. クローンしたリポジトリ内のルートディレクトリで VS Code 起動
2. "Reopen in Container" を実行し Dev Container を起動

### Move to the tauri project directory
```bash
/workspace$ cd vrc-voice-text
```

### Package Install
```bash
/workspace/vrc-voice-text$ yarn install
```

### Run
```bash
/workspace/vrc-voice-text$ yarn run tauri dev
```
