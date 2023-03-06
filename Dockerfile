FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y dos2unix software-properties-common curl
RUN apt-get install -y openjdk-17-jdk
RUN apt-get install -y ant


#		curl -O https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb && \
#		apt install ./jdk-17_linux-x64_bin.deb -y && \
#		update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-17/bin/java" 1 && \
#		update-alternatives --set java /usr/lib/jvm/jdk-17/bin/java
#    apt-get remove software-properties-common -y && \
#    apt-get autoremove -y && \
#    apt-get clean
RUN apt-get install -y wget
RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz -P /tmp
RUN tar xf /tmp/apache-maven-3.8.5-bin.tar.gz -C /opt && \
		rm /tmp/apache-maven-3.8.5-bin.tar.gz && \
		ln -s /opt/apache-maven-3.8.5 /opt/maven

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=/opt/apache-maven-3.8.5/bin:${PATH}

WORKDIR /var/data/