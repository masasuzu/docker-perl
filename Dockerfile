FROM ubuntu:xenial

# TODO: 依存モジュール整理したい
RUN apt-get update && apt-get install -y build-essential curl mysql-client libmysqlclient-dev libssl-dev libgmp-dev libssh2-1-dev libgd-dev libgmp-dev libimager-perl libgif-dev libjpeg-dev libpng12-dev libreadline-dev libgd2-xpm-dev libxml2-dev

RUN curl https://raw.githubusercontent.com/tagomoris/xbuild/master/perl-install --output perl-install && bash perl-install 5.18.2 /usr/local/perl/perl-5.18/

RUN apt-get clean && apt-get autoclean

CMD ["/usr/local/perl/perl-5.18/bin/perl", "-v"]
