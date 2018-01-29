# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

node 'foobar.example.com' inherits default {
  include dnsserver
}
node /^web[0-9]/ inherits default {
  include apache
}
node /^(foo|bar)\.example\.com$/ inherits default {
  include dbserver
}
node default {
  include baseline
}
