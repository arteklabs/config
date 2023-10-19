# !/bin/bash
# config vscode
# extensions
echo "[WARNING] remember to kill zscaler"
echo "[1 of 3] installing extensions"
extensions=(
    # themes
    "GitHub.github-vscode-theme"

    # docs
    "hediet.vscode-drawio"

    # open pdf files
    "tomoki1207.pdf"
)

for extension in "${extensions[@]}"; do
    code --install-extension "$extension" --force
    echo -e "install vscode extension '$extension': OK"
done

echo "[WARNING] overwriting your current vscode config if any"
echo "[2 of 3] configuring (see vscode/settings.json)"
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
