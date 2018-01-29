# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$hash = { key1 => 'value eins', key2 => 'value zwei' }
notify { "\$hash[key1]: ${hash[key1]}": }
notify { "\$hash[key2]: ${hash[key2]}": }
