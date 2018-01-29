# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$meine_variable = 'Hello World'
notify { "Ich sage ${meine_variable}": }
$num_apples = 5
$to_be_or_not_to_be = true
$destdir = '/var/tmp'
file { "${destdir}/testfile":
  ensure  => file,
  content => "Dies ist eine Testdatei.
Anzahl Äpfel: ${num_apples}
Sein oder nicht sein: ${to_be_or_not_to_be}
",
}
