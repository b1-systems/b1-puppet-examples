# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Only Puppet 3 (Puppet 4 gives 'Illegal title type' error)
define delusers() {
  user { $title['name']:
    ensure     => absent,
    managehome => true,
  }
}

$myusers = [{ 'name' => 'horst' },
            { 'name' => 'klaus' },]

delusers { $myusers: }
