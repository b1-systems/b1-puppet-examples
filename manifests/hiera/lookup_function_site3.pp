# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$var = lookup({
  'name'       => 'my_ntpservers',
  'value_type' => Array,
  'merge'      => 'unique',
})

notify { $var: }
