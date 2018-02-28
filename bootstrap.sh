#!/usr/bin/env bash

# Install docker-machine
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && \
  chmod +x /usr/local/bin/docker-machine

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "README.md" --exclude ".gitconfig" --exclude ".exports" -avh --no-perms . ~;
  source ~/.bash_profile;

sh brew.sh
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;

unset doIt;
