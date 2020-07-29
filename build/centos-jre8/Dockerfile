FROM centos7-base

ENV \
  JAVA_HOME="/usr/local/jre/" \
  PATH="/usr/local/jre/bin:$PATH" \
  CLASSPATH=.:/usr/local/jre/lib/rt.jar

ADD jre-8u201-linux-x64.tar.gz /usr/local/
RUN  set -ex \
  && ln -sv  /usr/local/jre1.8.0_201/ /usr/local/jre \
  && yum install -y java-1.8.0-openjdk-devel \
  && java -version \
  && jps \
# clean
  && rm -rf /usr/local/src/* \
  && yum clean all

ADD container-files /
