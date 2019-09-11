FROM drupal:latest

ENV DEBIAN_FRONTEND noninteractive
ENV DB_ROOT_PASSWORD=password

# install git
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
# install wget, lsb gnupg
RUN apt-get -y install wget lsb-release gnupg
    
# install mysql
RUN curl -o /tmp/mysql.deb https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
RUN echo mysql-apt-config mysql-apt-config/select-server select mysql-5.7 | debconf-set-selections
RUN echo mysql-community-server mysql-community-server/root-pass $DB_ROOT_PASSWORD rot | debconf-set-selections
RUN echo mysql-community-server mysql-community-server/re-root-pass $DB_ROOT_PASSWORD rot | debconf-set-selections
RUN dpkg -i /tmp/mysql.deb

RUN apt-get update
RUN apt-get -y install mysql-server mysql-client

EXPOSE 3306 

RUN git clone https://github.com/xandermar/xandermar.github.io.git







