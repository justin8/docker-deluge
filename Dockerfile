FROM base/archlinux
MAINTAINER justin@dray.be

RUN pacman -Syq --noprogressbar --noconfirm deluge python2-mako unrar unzip

VOLUME "/config"

EXPOSE 58846 8112
CMD /usr/bin/deluged -c /config && /usr/bin/deluge-web -c /config
