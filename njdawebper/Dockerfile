FROM php:7.0-apache

# Make add images to html folder and mediawiki folder to opt directory

RUN mkdir /root/scripts
COPY scripts/mkfolders.sh /root/scripts

RUN apt-get update && \
    apt-get install -y imagemagick \
    wget
  
RUN mkdir /opt/mediawiki
COPY /LocalSettings.php /opt/mediawiki

WORKDIR "/opt/"
RUN     wget https://releases.wikimedia.org/mediawiki/1.27/mediawiki-1.27.1.tar.gz && \
        tar -xvzf mediawiki-1.27.1.tar.gz && \
        mv /opt/mediawiki-1.27.1/* /opt/mediawiki

RUN chmod +x /root/scripts/mkfolders.sh && \
    bash -c "/root/scripts/mkfolders.sh"

COPY images/ /var/www/html/images/

# Change owner to apache
RUN chown -R www-data:www-data /var/www/html && \
    ls -lah /var/www 

VOLUME ["/opt/mediawiki", "/var/www/html"]