#!/usr/bin/env bash
set -x
set -e

#wget -O scantailor-enhanced-20140214.tar.bz2 http://downloads.sourceforge.net/project/scantailor/scantailor-devel/enhanced/scantailor-enhanced-20140214.tar.bz2
#tar xvjf scantailor-enhanced-20140214.tar.bz2
git clone -b enhanced --single-branch https://github.com/scantailor/scantailor
cd scantailor*
cmake .
make -j$1
make install
cd ..
rm -r scantailor*


