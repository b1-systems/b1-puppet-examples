# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$variable = 'penguin'

notice( $variable[1] )     # e
notice( $variable[1,2] )   # en
notice( $variable[0,2] )   # pe
notice( $variable[1,-2] )  # engui
notice( $variable[-1] )    # n
notice( $variable[-3,3] )  # uin
notice( $variable[-3,-3] ) # u

notice( $variable[10] )    # ''
notice( $variable[3,10] )  # guin
notice( $variable[-10,3] ) # ''
notice( $variable[-10,5] ) # pe
