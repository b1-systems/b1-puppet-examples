# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$myvar = 'test'
notify { "myvar = ${myvar}": }

$myvar = 'error'
notify { "myvar = ${myvar}": }
