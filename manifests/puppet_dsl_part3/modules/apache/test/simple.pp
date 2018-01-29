# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

include ::apache
$mydomain = 'www.example.com'
$basepath = "/var/www/html/${mydomain}"
apache::vhost{$mydomain:}
file {$basepath:
  ensure => directory,
}
file {"${basepath}/index.html":
  ensure  => file,
  content => '<html>
  <head>
    <title>flupp</title>
  </head>
  <body>
    <h1>Uh yes!</h1>
  </body>
</html>',
}

host{$mydomain:
  ensure => present,
  ip     => '127.0.0.1',
}
