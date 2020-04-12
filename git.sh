#!/bin/bash
sudo apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev \
  gettext libz-dev libssl-dev wget tar install-info -y
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.26.0.tar.xz
tar -xvf git-2.26.0.tar.xz
cd git-2.26.0
make configure
./configure --prefix=/usr
make -j 4 all
sudo make install
git --version
