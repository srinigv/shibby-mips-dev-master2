#!/bin/sh
echo 'Remember: Please compile as user: tomato'
cd /home/tomato/
cp -ax /home/tomato/tomato_git /home/tomato/tomato-make
cd /home/tomato/tomato-make

echo 'To compile, do something like:'
echo ''
echo 'make dir868l V1=VYPRVPN V2=2.6-XXX'
echo ''
echo 'sometimes this is usefull: git clean -dfx && git checkout . '
echo ''
echo 'Run "make distclean" before compiling.'
echo ''
echo 'But first, if you did not make it yet:'
echo 'ln -s /home/tomato/tomato-make/tools/brcm /opt/brcm'
echo 'echo "export PATH=$PATH:/opt/brcm/hndtools-mipsel-linux/bin:/opt/brcm/hndtools-mipsel-uclibc/bin:/sbin/" >> ~/.profile && source ~/.profile'
echo '==example=='
echo "LOG=~/log$(date '+%Y%m%d%H%M%S').txt"
echo 'make clean'
echo 'make distclean'
echo 'time -f "%E real, %U user, %S sys" make V1=mst15 V2="NDUSBExt" s $@ | tee $LOG'
echo 'time -f "%E real, %U user, %S sys" make V1=0000 V2=0000 e m | tee $LOG'
echo 'time -f "%E real, %U user, %S sys" make V1=1112 V2=2613 r2nc | tee $LOG'
