# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

gitserver # mkdir /srv/git
gitserver # chown git. /srv/git
gitserver # su - git
gitserver $ git init --bare /srv/git/controlrepo.git
