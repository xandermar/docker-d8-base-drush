FROM drupal:latest

# install git
RUN apt-get update \
    apt-get upgrade \
    apt-get install git

RUN git clone https://github.com/xandermar/xandermar.github.io.git
