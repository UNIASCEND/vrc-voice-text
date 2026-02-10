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

### Run (dev)
通常の開発では下記コマンドを使用して動作確認をしてください。
```bash
/workspace/vrc-voice-text$ yarn tauri dev
```

### Build (release)
実行ファイル (.exe) を作成します。Windows 上で動作確認したい時に使用してください。  
成果物は "/vrc-voice-text/src-tauri/target/x86_64-pc-windows-msvc/release/vrc-voice-text.exe" に生成されます。
```bash
/workspace/vrc-voice-text$ yarn tauri build -- --runner cargo-xwin --target x86_64-pc-windows-msvc
```
