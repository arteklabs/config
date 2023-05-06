#!/bin/bash
# config file for the mac
#
# - vscode extensions
extensions=(
    "alexkrechik.cucumberautocomplete"
    "AlexShen.classdiagram-ts"
    "amazonwebservices.aws-toolkit-vscode"
    "christian-kohler.npm-intellisense"
    "christian-kohler.path-intellisense"
    "CucumberOpen.cucumber-official"
    "DavidAnson.vscode-markdownlint"
    "dbaeumer.vscode-eslint"
    "esbenp.prettier-vscode"
    "GitHub.copilot"
    "hbenl.vscode-test-explorer"
    "kavod-io.vscode-jest-test-adapter"
    "mechatroner.rainbow-csv"
    "mhutchie.git-graph"
    "ms-azuretools.vscode-docker"
    "ms-python.isort"
    "ms-python.python"
    "ms-python.vscode-pylance"
    "ms-toolsai.jupyter"
    "ms-toolsai.jupyter-renderers"
    "ms-toolsai.vscode-jupyter-cell-tags"
    "ms-toolsai.vscode-jupyter-slideshow"
    "ms-vscode.test-adapter-converter"
    "njpwerner.autodocstring"
    "richie5um2.vscode-sort-json"
    "SimonSiefke.prettier-vscode"
    "streetsidesoftware.code-spell-checker"
    "timonwong.shellcheck"
    "ukoloff.win-ca"
    "yzhang.markdown-all-in-one"
    "alexkrechik.cucumberautocomplete"
    "AlexShen.classdiagram-ts"
    "amazonwebservices.aws-toolkit-vscode"
    "benjaminbenais.copilot-theme"
    "bierner.markdown-mermaid"
    "christian-kohler.npm-intellisense"
    "christian-kohler.path-intellisense"
    "dbaeumer.vscode-eslint"
    "designbyajay.typescript-snippets"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "foam.foam-vscode"
    "GitHub.copilot"
    "GitHub.github-vscode-theme"
    "hbenl.vscode-test-explorer"
    "hediet.vscode-drawio"
    "henriiik.docker-linter"
    "humao.rest-client"
    "immament.vscode-ngrx-uml"
    "indexsoftware.rds-data-api"
    "James-Yu.latex-workshop"
    "kavod-io.vscode-jest-test-adapter"
    "kingsimba.tsdoc-comment"
    "lextudio.restructuredtext"
    "linhmtran168.mac-ca-vscode"
    "magicstack.MagicPython"
    "Massi.javascript-docstrings"
    "mathematic.vscode-latex"
    "Meezilla.json"
    "mhutchie.git-graph"
    "ms-azuretools.vscode-docker"
    "ms-python.isort"
    "ms-python.python"
    "ms-python.vscode-pylance"
    "ms-toolsai.jupyter"
    "ms-toolsai.jupyter-keymap"
    "ms-toolsai.vscode-jupyter-cell-tags"
    "ms-toolsai.vscode-jupyter-slideshow"
    "ms-vscode-remote.remote-containers"
    "ms-vscode-remote.remote-ssh"
    "ms-vscode-remote.remote-ssh-edit"
    "ms-vscode-remote.remote-wsl"
    "ms-vscode-remote.vscode-remote-extensionpack"
    "ms-vscode.makefile-tools"
    "ms-vscode.remote-explorer"
    "ms-vscode.remote-server"
    "ms-vscode.test-adapter-converter"
    "mtxr.sqltools"
    "mtxr.sqltools-driver-mssql"
    "mtxr.sqltools-driver-pg"
    "myxvisual.vscode-ts-uml"
    "njpwerner.autodocstring"
    "njqdev.vscode-python-typehint"
    "richie5um2.vscode-sort-json"
    "ritwickdey.LiveServer"
    "searKing.preview-vscode"
    "shalldie.background"
    "tomsaunders.vscode-workspace-explorer"
    "trond-snekvik.simple-rst"
    "ukoloff.win-ca"
    "xabikos.JavaScriptSnippets"
    "yzhang.markdown-all-in-one"
)

for extension in "${extensions[@]}"; do
    code --install-extension "$extension" --force
done
# system packages
sudo apt update & sudo apt upgrade

# aws cli
sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

sudo apt install ranger htop tmux
sudo apt install python3.8-venv # python, pip
sudo apt install build-essential # make

# ts deps
# node is installed via nvm: node version manager
# node modules are installed via npm: node package manager
# testing node modules with: npx
sudo apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
nvm install node
nvm use node # use latest node version $LATEST_VERSION
# nvm alias default $LATEST_VERSION #
sudo npm install -g typescript

# docker
sudo apt install ca-certificates curl gnupg
sudo mkdir -m 0775 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# npx
npm install -g npx

# fs viz
sudo apt install tree

# python to deb converter
sudo apt install python3-stdeb python3-stdeb

# ifconfig
sudo apt install net-tools

# python
curl -sSL https://install.python-poetry.org | python3 -
echo "export PATH=\"$(echo ~)/.local/bin:$PATH\"" >> ~/.bashrc
sudo apt install python-is-python3