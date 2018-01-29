# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

node 'foobar.example.com' {
  include baseline
  include dnsserver
}
node /^web[0-9]/ {
  include baseline
  include apache
}
node /^(foo|bar)\.example\.com$/ {
  include baseline
  include dbserver
}
node default {
  include baseline
}
