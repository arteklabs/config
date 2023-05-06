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
    echo -e "install vscode extension '$extension': OK"
done
# - system packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
packages=(
    "wget"
    "git"
    "curl"
    "tree"
    "openssl@1.1" # https://formulae.brew.sh/formula/openssl@1.1
    "tmux" # https://formulae.brew.sh/formula/tmux#default
    "openssl"
    "readline"
    "sqlite3"
    "xz"
    "zlib"
    "gcc"
    "python" # https://docs.brew.sh/Homebrew-and-Python
    # https://formulae.brew.sh/formula/poetry
    "poetry"
    # https://formulae.brew.sh/formula/openssl@1.1
    #
    # list versions: install --list
    # list installed versions: versions
    # install version: install -v 3.9.9
    # 
    "pyenv"
    # https://formulae.brew.sh/formula/docker
    "docker"
)
for package in "${packages[@]}"; do
    brew install "$package"
    echo -e "install system package '$package': OK"
done

# aws cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /
rm ./AWSCLIV2.pkg
# which aws
# aws --version
echo -e "install system app 'aws-cli': OK"

# TODO
# ts deps
# node is installed via nvm: node version manager
# node modules are installed via npm: node package manager
# testing node modules with: npx
# node
# ts
# npx
