# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

gitserver # useradd git
gitserver # su - git
gitserver $ mkdir ~/.ssh
gitserver $ touch ~/.ssh/authorized_keys
gitserver $ chmod 700 ~/.ssh
gitserver $ chmod 600 ~/.ssh/authorized_keys
