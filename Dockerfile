FROM justin8/archlinux
MAINTAINER justin@dray.be

RUN pacman -Syq --noprogressbar --noconfirm deluge python2-mako unrar unzip && rm -rf /var/cache/pacman/pkg/*

VOLUME "/config"

EXPOSE 58846 8112
CMD /usr/bin/deluged -c /config && /usr/bin/deluge-web -c /config
