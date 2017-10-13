FROM debian:stretch-slim
MAINTAINER marc Sluiter <marc@slintes.net>

ENV DEBIAN_FRONTEND noninteractive
ENV LOCALE de_DE.UTF-8
ENV TZ=Europe/Berlin

RUN apt-get -qq update && apt-get -qqy --no-install-recommends install ca-certificates apt-transport-https curl gnupg \
  && curl https://packages.sury.org/php/apt.gpg | apt-key add - \
  && echo 'deb https://packages.sury.org/php/ stretch main' > /etc/apt/sources.list.d/deb.sury.org.list \
  && apt-get -qq update && apt-get -qqy upgrade \
  && apt-get -qqy --no-install-recommends install apache2 php5.6 libapache2-mod-php5.6 \
        php5.6-mysql php5.6-curl php5.6-json php5.6-mcrypt php5.6-gd php5.6-dom php5.6-mbstring php5.6-zip php5.6-memcache php5.6-memcached \
  && apt-get -qqy clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archive/*.deb

RUN /usr/sbin/phpenmod mysql curl json mcrypt gd dom mbstring zip memcache memcached
RUN a2enmod rewrite alias authz_host deflate dir expires headers mime autoindex negotiation setenvif

ADD run.sh /run.sh

ADD default.conf /etc/apache2/sites-available/000-default.conf
ADD php.ini /usr/local/php/php.ini
RUN ln -s /usr/local/php/php.ini /etc/php/5.6/apache2/conf.d/php.ini

RUN chmod 755 /run.sh && chown -R www-data:www-data /var/www/html

EXPOSE 80

ENTRYPOINT ["/run.sh"]

# put files to /var/www/html/

