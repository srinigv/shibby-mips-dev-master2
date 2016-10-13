#### shibby-mips-dev-master2 docker image

install container:

	docker pull srinigv/shibby-mips-dev-master2
    docker run -d -p 2222:22 srinigv/shibby-mips-dev-master2

SSH to this Container. The root user and tomato user password is: shibby

    ssh -p 2222 tomato@0.0.0.0
    # password: shibby

use get_shibby.sh to get sources from git://repo.or.cz/tomato.git

    get_shibby.sh

    # once download is complete sources are avaialbe in
    cd /home/tomato/tomato_git/

use copy_source_to_compile.sh to create a clone of tomato_git folder --> tomato-make

    copy_source_to_compile.sh

now switch into:

    cd /home/tomato/tomato-make

don't forget to run once:

    # create tools link under opt and set $PATH:
    ln -s /home/tomato/tomato-make/tools/brcm /opt/brcm
	echo "export PATH=$PATH:/opt/brcm/hndtools-mipsel-linux/bin:/opt/brcm/hndtools-mipsel-uclibc/bin:/sbin/" >> ~/.profile && source ~/.profile

now build the firmware with make
try make help or look into the Makefile in this directory to know your options.

    # cd /home/tomato/tomato-make
    make help
    # Example: build firmware for 868L
    make dir868l V1=MyFirmware V2=2.6-xxx

### Trouble?

Try this:

     # Did you save your work? Now is a good time..
     cd /home/tomato/tomato-make/release/
     git clean -dfx && git checkout .
     
     

