#!/bin/bash
# install homebrew system packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install rosetta
softwareupdate --install-rosetta

brews=(
    "wget"
    "git"
    "curl"
    "tree"
    # https://formulae.brew.sh/formula/openssl@1.1
    "openssl@1.1"
    # terminal multiplexer
    # https://formulae.brew.sh/formula/tmux#default
    "tmux"
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