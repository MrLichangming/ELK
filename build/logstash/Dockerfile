FROM centos:7
ADD container-files /
RUN   \
  set -x \
  && set -e \
  && chmod +x /usr/bin/{entrypoint,status}.sh /usr/bin/tini \
  && yum install -y epel-release  \
  && yum install -y python-pip \
  && pip install --upgrade pip \
  && pip install supervisor \
  && yum -y install wget \
  && wget https://artifacts.elastic.co/downloads/logstash/logstash-6.6.2.tar.gz \
  && tar zxvf logstash-6.6.2.tar.gz -C /opt \
  && rm -f logstash-6.6.2.tar.gz  \
  && yum install -y java \
  && yum clean all \
  && mv /opt/logstash-6.6.2 /opt/logstash \
  && mkdir -p /opt/logstash/logs
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/entrypoint.sh"]
CMD ["/usr/bin/supervisord"]