# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Bool Success
$mybool = true
validate_bool(true)
validate_bool(true, false, $mybool)

# Bool Fail - String
validate_bool('true')

# Bool Fail - Array
validate_bool([false, true])

# Array Success
$myarray = ['eins', 'zwei']
validate_array($myarray)

# Array Fail - Bool
validate_array(true)

# Array Fail - Undef
$undefined = undef
validate_array($undefined)

# Hash Success
$myhash = { 'key' => 'value', }
validate_hash($myhash)

# Hash Fail - Bool
validate_hash(true)

# Hash Fail - Array
validate_hash([true, 'String'])

# Integer Success
validate_integer(42)
validate_integer([1, 2, 3])
validate_integer(6, 10)
$undefined = undef
validate_integer(6, $undefined, 1)
validate_integer('42')

# Integer Fail - Float
validate_integer(42.0)

# Integer Fail - Not in range
validate_integer(1, 3, 2)

# Numeric Success
validate_numeric(-0.815)
validate_numeric([1, -42.0, 0.5])
validate_numeric(0.33, 1.33, -1.33)
validate_numeric('-42.0')

# Numeric Fail - String (not convertable)
validate_numeric('42 kg')

# Numeric Fail - Hash
validate_numeric({ 'key' => 'value' })

# String Success
$mystring = 'eins zwei drei'
validate_string($mystring)
$achtung_ausnahme = undef
validate_string($achtung_ausnahme)

# String Fail - Array
validate_string([ 'eins', 'zwei' ])

# Compare with undef
if $var == undef {
  fail('$var not defined!')
}

# Usage of validate_*
define mydefine($mystring) {
  validate_string($mystring)

  notify { "mystring = ${mystring}": }
}

mydefine { 'Test':
  mystring => false,
}
