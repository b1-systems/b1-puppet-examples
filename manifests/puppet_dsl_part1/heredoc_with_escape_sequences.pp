# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$heredoc3 = @("EOT"/tn)
First line\n\tSecond line\n${facts['fqdn']}
EOT

notify { "heredoc3: ${heredoc3}": }
