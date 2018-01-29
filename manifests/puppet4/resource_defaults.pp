# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$type = 'user'
$resources = {
  'nick' => { uid    => '1330',
              groups => ['developers', 'operations', 'release'], },
  'dan'  => { uid    => '1308',
              groups => ['developers', 'prosvc', 'release'], },
}
$defaults = { gid => 'allstaff',
              managehome => true,
              shell      => 'bash',
            }

$resources.each |String $resource, Hash $attributes| {
  Resource[$type] {
    $resource: * => $attributes;
    default:   * => $defaults;
  }
}
