# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

puppet[screen 1]# [puppet resource package puppet-server ensure=present]
puppet[screen 1]# puppet resource package puppetserver ensure=present
puppet[screen 1]# [puppet resource service puppetmaster ensure=stopped enable=false]
puppet[screen 1]# puppet resource service puppetserver ensure=stopped enable=false
puppet[screen 1]# puppet master --verbose --no-daemonize

client# puppet agent --test

puppet[screen 2]# puppet cert list
puppet[screen 2]# puppet cert sign client.local.site

client# puppet agent --test --server puppet.local.site
