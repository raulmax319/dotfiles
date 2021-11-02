#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew install --cask --no-quarantine firefox
# brew install --cask --no-quarantine visual-studio-code

brew bundle --verbose