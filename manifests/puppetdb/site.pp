node 'puppet.local.site' {
  class { 'puppetdb':
    listen_address   => '0.0.0.0',
    listen_port      => 8080,
    open_listen_port => true,
  }
  class { 'puppetdb::master::config':
    manage_report_processor => true,
    enable_reports          => true,
  }

  class { 'apache': }
  class { 'apache::mod::wsgi':
    wsgi_socket_prefix => '/var/run/wsgi',
  }
  class { 'puppetboard':
    manage_git        => true,
    manage_virtualenv => true,
    listen            => 'public',
    reports_count     => 40,
    enable_catalog    => true,
  }
  class { 'puppetboard::apache::vhost':
    vhost_name => 'puppet.local.site',
    port       => 8088,
  }
  firewall { '100 Puppetserver inbound':
    dport  => 8140,
    proto  => tcp,
    action => accept,
  }
  firewall { '101 Puppetboard inbound':
    dport  => 8088,
    proto  => tcp,
    action => accept,
  }
}
