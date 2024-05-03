#!/bin/bash
# installer

canonicalFormScript="canonicalFormScript.sh"

chmod +x "$canonicalFormScript"

cp "$canonicalFormScript" "$HOME/"

default_shell=$(basename "$SHELL")

if [ "$default_shell" = "bash" ] || [ "$default_shell" = "zsh" ]; then
    echo 'alias ocf="/bin/bash $HOME/canonicalFormScript.sh"' >> "$HOME/.bashrc"
    echo 'alias ocf="/bin/bash $HOME/canonicalFormScript.sh"' >> "$HOME/.zshrc"
    echo -e "\033[K\033[32m\n\nAlias 'ocf' has been added to your shell configuration."
else
    echo "Unknown shell '$default_shell'. You might need to add the alias manually to your shell configuration."
fi

echo -e "\nto use, restart your terminal and run: \"ocf <class name\" in your terminal"