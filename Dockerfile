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
#ENV JAVA_HOME /usr/lib/jvm/jdk-17/bin
#ENV PATH ${PATH}:${JAVA_HOME}
WORKDIR /var/data