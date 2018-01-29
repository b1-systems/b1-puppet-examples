# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

gitserver # su - git
gitserver $ mkdir ~/git-shell-commands
gitserver $ cat > ~/git-shell-commands/no-interactive-login <<EOF
#!/bin/sh
echo "Hi ${USER}! You've successfully authenticated,"
echo "but I don't provide interactive shell access."
exit 128
EOF
gitserver $ chmod +x ~/git-shell-commands/no-interactive-login
gitserver $ exit
gitserver # GIT_SHELL=$(which git-shell)
gitserver # echo $GIT_SHELL >> /etc/shells
gitserver # chsh -s $GIT_SHELL git
