FROM debian:7.4
MAINTAINER smallka <iamsmallka@gmail.com>

RUN apt-get -qq update

# environment
RUN apt-get -qqy install apt-utils vim tmux gcc make g++ subversion git
ADD .vimrc /root/
ADD .tmux.conf /root/

# gdb
RUN apt-get -qqy install gdb
ADD .gdbinit /root/

# valgrind
ADD valgrind-3.9.0.tar.bz2 /root/
RUN cd /root/valgrind-3.9.0; ./configure; make; make install

# python
RUN apt-get -qqy install python ipython

