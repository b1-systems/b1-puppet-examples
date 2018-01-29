# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define hosts::allow( $process, $ensure=present ) {
  $client = $name
  if $ensure == present {
    augeas { "Add ${client} to ${process} (process not present)":
      context => '/files/etc/hosts.allow',
      changes => [ "set 01/process ${process}",
        "set 01/client[last()+1] ${client}", ],
      onlyif  => "match *[process='${process}'] size == 0",
    } ->
    augeas { "Add ${client} to ${process} (process present)":
      context => '/files/etc/hosts.allow',
      changes => "set *[process='${process}']/client[last()+1] ${client}",
      onlyif  => "match *[process='${process}']/client[.='${client}'] size == 0",
    }
  } else {
    augeas { "Remove ${client} from ${process} (not last client)":
      context => '/files/etc/hosts.allow',
      changes => "rm *[process='${process}']/client[.='${client}']",
      onlyif  => "match *[process='${process}'][count(client)>1]/client[.='${client}'] size == 1",
    }
    augeas { "Remove ${client} from ${process} (last client)":
      context => '/files/etc/hosts.allow',
      changes => "rm *[process='${process}']",
      onlyif  => "match *[process='${process}'][count(client)=1]/client[.='${client}'] size == 1",
    }
  }
}

hosts::allow { '10.128.100.10':
  ensure  => present,
  process => 'sshd',
}

hosts::allow { ['10.128.100.12', '10.128.100.14']:
  ensure  => present,
  process => 'nrpe',
}

hosts::allow { '10.128.100.20':
  ensure  => absent,
  process => 'nrpe',
}
