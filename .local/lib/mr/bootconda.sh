#!/bin/env bash

PREFIX=$HOME/local
mkdir -p $HOME/downloads && cd $HOME/downloads
wget -O miniconda.sh http://repo.continuum.io/miniconda/Miniconda-2.0.3-Linux-x86_64.sh
chmod +x miniconda.sh
./miniconda.sh -p $PREFIX -b 
export PATH=$PREFIX/bin:$PATH
conda update conda
conda install chrpath binstar python lxml gevent pcre curl pip unixodbc grin
