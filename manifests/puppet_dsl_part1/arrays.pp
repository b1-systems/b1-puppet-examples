# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$array = ['eins', 2, 3, 'vier']
notify { "\$array[0]: ${array[0]}": }
notify { "\$array[2]: ${array[2]}": }
notify { "\$array[-1]: ${array[-1]}": }
