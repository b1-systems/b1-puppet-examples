# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

validate_integer(42)
validate_integer([1, 2, 3])
validate_integer(6, 10)
$undefined = undef
validate_integer(6, $undefined, 1)
validate_integer('42')
