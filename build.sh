#!/bin/bash

beforepath=`pwd`

if [ $1 != "" ] ;then
    cd $1
fi

mkdir Build
cd ./Build

rm -rf *
#time -p cmake -G"Ninja" ..
time -p cmake -G"Unix Makefiles" ..
time -p make

cd $beforepath
