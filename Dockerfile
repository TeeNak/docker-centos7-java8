FROM centos:7
MAINTAINER TeeNak <teenak77@gmail.com>

RUN yum install -y curl

ENV JDK_VERSION 8u101
ENV JDK_BUILD_VERSION b13
#RUN \
#	curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && \
#	rpm -i jdk-$JDK_VERSION-linux-x64.rpm && \
#	rm -f jdk-$JDK_VERSION-linux-x64.rpm && \
#	yum clean all
ADD ./jdk-$JDK_VERSION-linux-x64.rpm .
RUN rpm -i jdk-$JDK_VERSION-linux-x64.rpm && \
	rm -f jdk-$JDK_VERSION-linux-x64.rpm && \
	yum clean all

ENV JAVA_HOME /usr/java/default


