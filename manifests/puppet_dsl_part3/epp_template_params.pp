# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$var1 = 'Ottokarl Hinterhuber'
$var2 = 'IT Department'

file { '/var/tmp/epp_test':
  content => epp('mytemplates/params.epp', { 'kontakt'   => $var1,
                                             'abteilung' => $var2 }),
}

file { '/var/tmp/epp_test2':
  content => epp('mytemplates/params.epp', { 'kontakt'   => 'Josef Maier',
                                             'abteilung' => 'Sales',
                                             'support'   => '8x5', }),
}
