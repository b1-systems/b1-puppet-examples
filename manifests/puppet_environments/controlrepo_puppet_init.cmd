# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

puppet # git init ~/controlrepo
puppet # cd ~/controlrepo
puppet # echo 'controlrepo' > README
puppet # git add .
puppet # git commit -m 'Initial commit.'
puppet # git branch -m master production
puppet # git remote add origin \
  git@gitserver:/srv/git/controlrepo.git
puppet # git push origin production
