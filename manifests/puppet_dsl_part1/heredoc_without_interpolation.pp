# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$heredoc1 = @(EOT)
First line
Second line
${facts['fqdn']}
EOT

notify { "heredoc1: ${heredoc1}": }
