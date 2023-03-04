#!/bin/bash

export Qt5_DIR=/data/qt/5.15.7/static
export PATH=$PATH:$Qt5_DIR/bin

qmake

sed -i 's/-lssl -lcrypto/\/usr\/lib\/x86_64-linux-gnu\/libssl.a \/usr\/lib\/x86_64-linux-gnu\/libcrypto.a/g' Makefile

make -j4
strip NetAssistant 
