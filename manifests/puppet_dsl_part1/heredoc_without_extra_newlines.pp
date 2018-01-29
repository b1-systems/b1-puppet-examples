# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$heredoc6 = @(EOT/L)
First line is very long, \
but is not yet over
EOT

notify { "heredoc6: ${heredoc6}": }
