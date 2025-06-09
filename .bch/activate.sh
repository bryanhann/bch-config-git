#!/usr/bin/env bash

r=$(dirname $(dirname ${BASH_SOURCE[0]}))

export BCH_CONFIG_GIT__root=${r}
export BCH_CONFIG_GIT__init=${r}/.bch/activate.sh
export BCH_CONFIG_GIT__lbin=${r}/.bch/lbin
export BCH_CONFIG_GIT__bin=${r}/.bch/bin
export BCH_CONFIG_GIT__lib=${r}/.bch/lib

rm -f ~/.config/git
ln -s ${r}/config.git ~/.config/git

bch:000:linkall ${r}/.bch/lbin

source ${r}/.bch/init/init.sh

unset r
