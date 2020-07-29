FROM centos:7
RUN   \
      set -x \
   && set -e \
   && yum install -y epel-release  \
   && yum install -y python-pip \
   && pip install --upgrade pip \
   && pip install supervisor \
   && yum -y install wget \
   &&  wget https://artifacts.elastic.co/downloads/kibana/kibana-6.6.1-linux-x86_64.tar.gz \
   &&  tar zxvf kibana-6.6.1-linux-x86_64.tar.gz -C /opt/  \
   &&  rm -f kibana-6.6.1-linux-x86_64.tar.gz
WORKDIR /opt/kibana-6.6.1-linux-x86_64
ADD container-files /
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/entrypoint.sh"]
CMD ["/usr/bin/supervisord"]