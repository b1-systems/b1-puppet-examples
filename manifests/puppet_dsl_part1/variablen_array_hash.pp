# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$calc1 = 10 + 2.5
$calc2 = $calc1 / 2
notify { "calc2 = ${calc2}": }
#notice( $calc2 )

$myarray = [ 'eins', 'zwei', 'drei' ]
notify { $myarray[1]: } #[-1] waere 'drei'

$myhash = { key1 => 'foobar', key2 => 'baz' }
notify { $myhash[key2]: }
