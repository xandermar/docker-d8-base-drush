FROM drupal:latest

# install git
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN git clone https://github.com/xandermar/xandermar.github.io.git
