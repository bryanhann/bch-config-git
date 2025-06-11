#!/usr/bin/env bash

r=$(dirname $(dirname ${BASH_SOURCE[0]}))

rm -f ~/.config/git
ln -s ${r}/config.git ~/.config/git

export BCH_CONFIG_GIT__root=${r}
export BCH_CONFIG_GIT__init=${r}/.bch/activate.sh
export BCH_CONFIG_GIT__lbin=${r}/.bch/lbin
export BCH_CONFIG_GIT__bin=${r}/.bch/bin
export BCH_CONFIG_GIT__lib=${r}/.bch/lib

source ${r}/.bch/init/fn.sh
source ${r}/.bch/init/init.sh

::lbin:: ${r}/.bch/lbin

unset r
