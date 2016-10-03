FROM php:7.0-apache

# Make add images to html folder and mediawiki folder to opt directory

RUN mkdir -p /var/www/html/images && \
    mkdir -p /var/www/html/upload \
    mkdir -p /var/www/html/cache \
    mkdir -p /var/www/html/config \
    mkdir -p /opt/mediawiki

COPY /mediawiki /opt/mediawiki

# Remove folders from operating folder as created before directly in web folder     
RUN rm -rf /opt/mediawiki/images && \
    rm -rf /opt/mediawiki/upload \
    rm -rf /opt/mediawiki/cache \
    rm -rf /opt/mediawiki/config

# Create softlink from mediawiki folder to web root 
RUN ln -s /opt/mediawiki/* /var/www/html/

# Change owner to apache
RUN chown -R www-data:www-data /var/www/html && \
    ls -lah /var/www 

VOLUME ["/opt/mediawiki", "/var/www/html"]