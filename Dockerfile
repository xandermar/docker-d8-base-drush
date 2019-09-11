FROM drupal:latest

# install git
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
# install mysql
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y mysql-server mysql-client

RUN service mysql start

RUN git clone https://github.com/xandermar/xandermar.github.io.git
