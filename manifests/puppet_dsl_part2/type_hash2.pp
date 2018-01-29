# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class users(
  Hash[
    String,
    Struct[ { 'home' => Pattern[/^\/.*/] } ]
  ] $users
) {
  notify { 'users': }
}

$users_hash = {
  'john' => { 'home' => '/home/john' },
  'jim'  => { 'home' => 'home/jim' },
}

class { 'users':
  users => $users_hash,
}
