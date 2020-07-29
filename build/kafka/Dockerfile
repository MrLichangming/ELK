FROM centos:7
RUN  \
  set -x \
  && set -e \
  && yum install -y wget \
  && yum install -y telnet \
  && yum install -y epel-release  \
  && yum install -y python-pip \
  && yum install -y unzip \
  && pip install --upgrade pip \
  && pip install supervisor \
  && wget https://archive.apache.org/dist/kafka/2.0.0/kafka_2.12-2.0.0.tgz \
  && tar zxvf kafka_2.12-2.0.0.tgz -C /opt \
  && supervisord -v \
  && yum clean all
ADD container-files /
WORKDIR /opt/kafka_2.12-2.0.0/
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/entrypoint.sh"]
CMD ["/usr/bin/supervisord"]