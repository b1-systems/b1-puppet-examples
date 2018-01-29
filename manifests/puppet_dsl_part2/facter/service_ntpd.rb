# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# systemd service_ntpd

Facter.add('service_ntpd') do
  setcode do
    Facter::Core::Execution.exec('/bin/systemctl is-active ntpd.service')
  end
end
