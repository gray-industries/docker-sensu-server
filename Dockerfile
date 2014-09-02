FROM grayindustries/docker-sensu-base
MAINTAINER Greg Poirier <grep@gray.industries>

# Basic sensu-server settings
ADD files/config.json /etc/sensu/config.json
# Sync with a local directory or a data volume container
VOLUME /etc/sensu/conf.d
VOLUME /etc/sensu/extensions.d
CMD /opt/sensu/bin/sensu-server -d /etc/sensu/conf.d -e /etc/sensu/extensions.d -c /etc/sensu/config.json
