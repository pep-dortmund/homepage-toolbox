#!/bin/bash

set -euo pipefail


# download installer
tmpdir=$(mktemp -d)

cd $tmpdir
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz

# create profile
echo "selected_scheme scheme-full" > toolbox.profile

# install LaTeX
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl -profile toolbox.profile

# add to PATH
echo 'export PATH="$HOME/.local/texlive/2021/bin/x86_64-linux:$PATH"' >> $HOME/.bashrc


# set options
cd $HOME/.local/.texlive/2021/bin/x86_64-linux

./tlmgr option autobackup -- -1
./tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

