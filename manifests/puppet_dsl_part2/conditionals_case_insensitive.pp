# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$var = 'CaseSensitive'
#$var = 'Casesensitive'
#$var = 'CaseInSensitive'

case $var {
  /(?i:caseinsensitive)/: {
    notice( 'case insensitive worked' )
  }
  /CaseSensitive/: {
    notice( 'case sensitive worked' )
  }
  default: {
    notice( 'miserably' )
  }
}
