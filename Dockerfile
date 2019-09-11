FROM drupal:latest

# install git drush
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y drush
    
RUN git -C /var/www/html/sites clone https://github.com/xandermar/xandermar.github.io.git







