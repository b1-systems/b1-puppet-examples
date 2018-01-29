# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class hieratest() {
  $appname = lookup('hieratest::appname', String, 'first', 'my_super_workload')
  $version = lookup('hieratest::version', String, 'first', '1.2')
  $mywidgets = lookup('hieratest::widgets', Array[String], 'unique', [])
  notify { 'hiera test':
    message => "App $appname, Version $version",
  }
  $mywidgets.each |$widget| {
    notify { "widget: $widget": }
  }
}
