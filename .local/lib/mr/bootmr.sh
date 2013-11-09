#!/bin/env bash

mkdir -p $HOME/.local/bin
export PATH=$HOME/.local/bin:$PATH
wget --no-check-certificate -O $HOME/.local/bin/vcsh https://bitbucket.org/charlesflynn/mr/raw/master/.local/bin/vcsh && chmod 0755 !#:3
vcsh clone git@bitbucket.org:charlesflynn/mr.git
cd; mr update
vcsh list-tracked | sed 's|^|/|' > ~/.gitignore; cat ~/.gitignore_global >> ~/.gitignore
