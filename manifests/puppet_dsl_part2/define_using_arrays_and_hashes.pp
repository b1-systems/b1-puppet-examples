# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define define_myarray() {
  notify { $title: }
}

$a = [ 'eins', 'zwei', 'drei' ]
define_myarray { $a: }

define define_myarray2() {
  notify { "id: ${title['id']}": }
  notify { "ip: ${title['ip']}": }
}

$b = [{ 'id' => 'bar', 'ip' => '1.1.1.1'},
      { 'id' => 'baz', 'ip' => '2.2.2.2'},]
define_myarray2 { $b: }
