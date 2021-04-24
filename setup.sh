#!/usr/bin/env bash
set -euo pipefail

echo "Installing necessary dependencies"
sudo apt install curl
sudo apt install nodejs

echo "Moving config files"
cp "$PWD/.flake8" ~/.flake8
cp "$PWD/.vimrc" ~/.vimrc
cp "$PWD/.bash_aliases" ~/.bash_aliases
