# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$plain_property = lookup('plain_property')
$secure_property = lookup('secure_property')

notify { "plain_property: ${plain_property}": }
notify { "secure_property: ${secure_property}": }
