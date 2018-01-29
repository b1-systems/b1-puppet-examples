# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define mydefine(Optional[String] $myparameter = undef) {
  notify { 'mydefine': }
}

mydefine { 'Test':
  myparameter => false,
}
