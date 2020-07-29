FROM centos:7
RUN yum -y install epel-release \
    && yum -y install wget \
    && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.6.2.tar.gz \
    && tar zxvf elasticsearch-6.6.2.tar.gz -C /opt  \
    && rm -f  elasticsearch-6.6.2.tar.gz \
    && yum -y install java \
    && yum -y install python-pip \
    && yum -y install nc \
    && yum clean all \
    && groupadd esgroup \
    && useradd es -g esgroup \
    && chown -R es:esgroup /opt/*6.6.2*
ENV LANG=en_US.UTF-8
USER es
CMD ["/opt/elasticsearch-6.6.2/bin/elasticsearch"]
