# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

exec { '/usr/bin/curl http://server/file.tgz > /srv/ftp/deploy.tgz':
  onlyif => '/usr/bin/rpm -q vsftp',
}

exec { 'wget -O/home/tux/sles11.iso http://suse.com/sles11.iso':
  environment => [ 'http_proxy=http://squid.example.com:3128' ],
  path        => [ '/usr/bin', '/bin' ],
  user        => 'tux',
}
