FROM centos:centos6

RUN yum makecache && yum update -y
RUN yum groupinstall -y "Development Tools"
RUN yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison iconv-devel tar which

ADD scripts/ /root/

RUN /root/install_ruby.bash
RUN /root/install_fpm.bash
RUN /root/install_golang.bash

VOLUME ["/build"]
ENTRYPOINT ["/bin/bash", "-l"]
CMD ["-c", "/root/run.bash"]
