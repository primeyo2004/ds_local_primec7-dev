# Author: Jeune Prime Origines
# Description: Dockerize my CentOS 7 development enviroment to build CentOS7 projects in my ubuntu
from local/primec7
RUN yum -y install epel-release && yum -y update && yum clean all
RUN yum group install "Development Tools" -y
RUN yum install -y cmake3
RUN yum install -y boost-devel
RUN yum install -y sqlite-devel
RUN yum install -y cups-devel
RUN yum install -y compat-gcc-44
RUN yum install -y compat-gcc-44-c++
RUN yum install -y bison-devel 
RUN yum install -y flex-devel 
RUN yum install -y vim 
RUN yum install -y sudo
RUN useradd prime
RUN echo -e "dummy123\ndummy123" | passwd  prime
RUN usermod -aG wheel prime
