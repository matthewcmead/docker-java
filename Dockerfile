############################################################################
# This dockerfile will setup a centos container with OpenJDK installed on it
############################################################################

FROM centos:7

MAINTAINER matthewcmead

RUN yum -y install java-1.8.0-openjdk-devel && rm -rf /var/cache/yum/*

ENV JAVA_HOME /usr/lib/jvm/java-openjdk

CMD ["java", "-version"]
