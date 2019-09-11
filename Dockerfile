FROM drupal:latest

# install git drush
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN git -C /var/www/html/sites clone https://github.com/xandermar/xandermar.github.io.git







