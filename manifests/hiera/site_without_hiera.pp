# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

node 'myspecialnode.b1-systems.de' {
  class { 'hieratest':
    appname => 'another_enterprise_workload',
    version => '1.5',
  }
}
node default {
  class { 'hieratest':
    appname => 'my_enterprise_workload',
    version => '13',
  }
}
