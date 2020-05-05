# copyright: B1 Systems GmbH <info@b1-systems.de>, 2019
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { '/tmp/myfacts':
  ensure  => file,
  content => @("EOT")
    mein_fact = ${facts['mein_fact']}
    yamlfact = ${facts['yamlfact']}
    ein_json_fact = ${facts['ein_json_fact']}
    active_user_count = ${facts['active_user_count']}
    | EOT
}
