#!/usr/bin/env bash

# Prepare vscode-xdebug setup
mkdir -p .vscode
cp .gitpod/templates/launch.json .vscode/.

# Install via composer
ddev composer install