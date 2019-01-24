# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$var1 = 'Lorem Ipsum'
$var2 = 'ich bin ein Titel'

notify { $var2:
  message => "Nachricht: ${var1}",
}
