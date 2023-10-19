# !/bin/bash
# config vscode
# extensions
echo "[WARNING] remember to kill zscaler"
echo "[1 of 3] installing extensions"
extensions=(
    # themes
    "GitHub.github-vscode-theme"

    # docs
    "hediet.vscode-drawio" # diagrams

    # open pdf files
    "tomoki1207.pdf"

    # dev container
    "ms-vscode-remote.remote-containers"

    # docker
    "ms-azuretools.vscode-docker"

    # python
    "ms-python.python"

    # linting
    "njpwerner.autodocstring" # python

    # copilot
    "GitHub.copilot"
    "GitHub.copilot-chat"
)

for extension in "${extensions[@]}"; do
    code --install-extension "$extension" --force
    echo -e "install vscode extension '$extension': OK"
done

echo "[WARNING] overwriting your current vscode config if any"
echo "[2 of 3] configuring (see vscode/settings.json)"
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
