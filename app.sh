#!/bin/bash
# install vscode from microsoft.vscode to macOS
# move the unzipped bin to Applications
# install vscode extension inhmtran168.mac-ca-vscode manually on vscode to avoid `unable to get local issuer certificate`

# config file for the mac
#
# - vscode extensions
extensions=(
    "alexkrechik.cucumberautocomplete"
    "amazonwebservices.aws-toolkit-vscode"
    "CucumberOpen.cucumber-official"
    "DavidAnson.vscode-markdownlint"
    "esbenp.prettier-vscode"
    "GitHub.copilot"
    "hbenl.vscode-test-explorer"
    "mechatroner.rainbow-csv"
    "ms-azuretools.vscode-docker"
    "ms-python.isort"
    "ms-python.python"
    "ms-python.vscode-pylance"
    "ms-toolsai.jupyter"
    "ms-toolsai.jupyter-renderers"
    "ms-toolsai.vscode-jupyter-cell-tags"
    "ms-toolsai.vscode-jupyter-slideshow"
    "njpwerner.autodocstring"
    "richie5um2.vscode-sort-json"
    "SimonSiefke.prettier-vscode"
    "streetsidesoftware.code-spell-checker"
    "timonwong.shellcheck"
    "yzhang.markdown-all-in-one"
    "alexkrechik.cucumberautocomplete"
    "amazonwebservices.aws-toolkit-vscode"
    "benjaminbenais.copilot-theme"
    "bierner.markdown-mermaid"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "foam.foam-vscode"
    "GitHub.copilot"
    "GitHub.github-vscode-theme"
    "hediet.vscode-drawio"
    "henriiik.docker-linter"
    "humao.rest-client"
    "lextudio.restructuredtext"
    "linhmtran168.mac-ca-vscode"
    "magicstack.MagicPython"
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
    "ms-vscode-remote.vscode-remote-extensionpack"
    "ms-vscode.makefile-tools"
    "ms-vscode.remote-explorer"
    "ms-vscode.remote-server"
    "ms-vscode.test-adapter-converter"
    "njpwerner.autodocstring"
    "richie5um2.vscode-sort-json"
    "searKing.preview-vscode"
    "shalldie.background"
    "tomsaunders.vscode-workspace-explorer"
    "trond-snekvik.simple-rst"
    "xabikos.JavaScriptSnippets"
    "yzhang.markdown-all-in-one"
    "ms-python.pylint"

    # open pdf files
    "tomoki1207.pdf"
)

for extension in "${extensions[@]}"; do
    code --install-extension "$extension" --force
    echo -e "install vscode extension '$extension': OK"
done
# - system packages
# install homebrew, the missing package manager for macOS
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install rosetta
softwareupdate --install-rosetta

brews=(
    "wget"
    "git"
    "curl"
    "tree"
    "openssl@1.1" # https://formulae.brew.sh/formula/openssl@1.1
    "tmux" # https://formulae.brew.sh/formula/tmux#default
    "readline"
    "sqlite3"
    "xz"
    "zlib"
    "gh"
    # prettyfying and searching and filtering
    "jq"
    "gcc"
    "tcl-tk"
    # https://formulae.brew.sh/formula/poetry
    "poetry"
    # https://formulae.brew.sh/formula/openssl@1.1
    #
    # list versions: install --list
    # list installed versions: versions
    # install version: install -v 3.9.9
    # 
    "pyenv"
    "docker"
    "docker-machine"
    "nvm"
    # canvas
    "pkg-config"
    "cairo"
    "pango"
    "libpng"
    "jpeg"
    "giflib"
    "librsvg"
    "aws/tap/copilot-cli"

    # docker
    "docker"
    "docker-credential-helper"
    "colima"

    # vscode
    "powerlevel10k"

)
for brew in "${brews[@]}"; do
    brew install "$brew"
    echo -e "install system package '$brew': OK"
done

# aws cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /
rm ./AWSCLIV2.pkg
# which aws
# aws --version
echo -e "install system app 'aws-cli': OK"

nvm install node
# node --version
echo -e "install system app 'node': OK"

npm install -g npm@latest

npm install -g spectaql

# npm canvas
npm install -g node-gyp
echo -e "install system node app 'node': OK"

# TODO
# ts deps
# node is installed via nvm: node version manager
# node modules are installed via npm: node package manager
# testing node modules with: npx
# node
# ts
# npx

# install pylint for vscode linting
python -m pip install -U pylint

# tex
# download https://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg

# aws ssm manager (still necessary with the cli v2?)
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac_arm64/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"
unzip sessionmanager-bundle.zip
sudo ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin
rm -rf sessionmanager-bundle.zip sessionmanager-bundle

# docker
#
# TODO write to /Users/dipm/.docker/config.json
# 
# {
#         "auths": {},
#         "credsStore": "osxkeychain",
#         "currentContext": "colima"
# }
colima start