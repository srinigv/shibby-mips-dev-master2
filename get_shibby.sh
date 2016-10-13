#!/bin/sh
echo 'Remember: For security reasons please compile as user: tomato'
[ -d /home/tomato/tomato_git ] && rm -rf /home/tomato/tomato_git
[ -d /opt/brcm ] && rm -rf /opt/brcm
mkdir -p /home/tomato/
cd /home/tomato/
echo 'Cloning tomato.git Git into /home/tomato/tomato_git/'
git clone git://repo.or.cz/tomato.git tomato_git
echo 'To copy and compile the source run:'
echo 'copy_source_to_compile.sh'
