# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

validate_numeric(-0.815)
validate_numeric([1, -42.0, 0.5])
validate_numeric(0.33, 1.33, -1.33)
validate_numeric('-42.0')
