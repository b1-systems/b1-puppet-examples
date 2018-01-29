# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# mkdir /srv/git
# git init --bare --shared /srv/git/controlrepo.git
# git init ~/controlrepo
# cd ~/controlrepo
# echo 'controlrepo' > README
# git add .
# git commit -m 'Initial commit.'
# git branch -m master production
# git remote add origin /srv/git/controlrepo.git
# git push origin production
