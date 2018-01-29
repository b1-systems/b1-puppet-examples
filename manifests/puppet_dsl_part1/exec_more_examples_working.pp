# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

exec { '/usr/bin/curl http://www.ntp.org/documentation.html > /root/ntp_doc.html':
  onlyif => '/usr/bin/rpm -q ntp',
}

exec { 'wget -O${DEST}/ntp.html http://www.ntp.org/index.html':
  environment => [ 'DEST=/home/vagrant' ],
  path        => [ '/usr/bin', '/bin' ],
  user        => 'vagrant',
}
