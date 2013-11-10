#!/bin/bash

curl -L https://github.com/charlesflynn/mr/archive/master.tar.gz | tar xvz --strip 1 -C $HOME
curl -L https://github.com/charlesflynn/dotfiles/archive/master.tar.gz | tar xvz --strip 1 -C $HOME
curl -L https://bitbucket.org/charlesflynn/dotlocal/get/master.tar.gz | tar xvz --strip 1 -C $HOME
rm $HOME/README.md $HOME/LICENSE
$HOME/.local/bin/mr update
bash $HOME/.local/lib/mr/bootconda.sh
source $HOME/.bash_profile
