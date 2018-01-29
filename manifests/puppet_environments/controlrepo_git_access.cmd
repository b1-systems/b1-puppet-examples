# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

puppet # ssh-keygen
puppet # scp ~/.ssh/id_rsa.pub \
  root@gitserver:id_rsa_puppet.pub
gitserver # cat ~/id_rsa.puppet.pub \
  >> /home/git/.ssh/authorized_keys
