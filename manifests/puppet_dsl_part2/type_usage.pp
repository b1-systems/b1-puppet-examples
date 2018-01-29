# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define mydefine(String $mystring) {
  notify { "mystring = ${mystring}": }
}

mydefine { 'Test':
  mystring => false,
}
