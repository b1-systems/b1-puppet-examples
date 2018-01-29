# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class ssh inherits ssh::params {

  include ssh::install
  include ssh::config
  include ssh::service

  anchor { 'ssh::begin': }
    Class['ssh::install'] ->
    Class['ssh::config'] ->
    Class['ssh::service'] ->
  anchor { 'ssh::end': }
}
