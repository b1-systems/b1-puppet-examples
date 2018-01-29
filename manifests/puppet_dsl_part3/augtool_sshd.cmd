# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# egrep '^PasswordAuthentication' /etc/ssh/sshd_config
PasswordAuthentication yes

# augtool
augtool> get /files/etc/ssh/sshd_config/PasswordAuthentication
/files/etc/ssh/sshd_config/PasswordAuthentication = yes
augtool> set /files/etc/ssh/sshd_config/PasswordAuthentication no
augtool> get /files/etc/ssh/sshd_config/PasswordAuthentication
/files/etc/ssh/sshd_config/PasswordAuthentication = no
augtool> save
Saved 1 file(s)
augtool> quit

# egrep '^PasswordAuthentication' /etc/ssh/sshd_config
PasswordAuthentication no
