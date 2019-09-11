FROM drupal:latest

# install git
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
# install mysql
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y mysql-server-5.7 mysql-client
    
RUN sed -i -e "s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ENV DB_USER user
ENV DB_PASSWORD password
ENV DB_NAME drupal
ENV VOLUME_HOME "/var/lib/mysql"

EXPOSE 3306 

RUN git clone https://github.com/xandermar/xandermar.github.io.git
