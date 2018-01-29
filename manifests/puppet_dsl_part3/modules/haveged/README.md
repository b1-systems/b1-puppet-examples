# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

#haveged

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with haveged](#setup)
    * [What haveged affects](#what-haveged-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with haveged](#beginning-with-haveged)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)

##Overview

The haveged module serves as a simple demonstration of best practices regarding Puppet modules.
It will install haveged [http://www.issihosts.com/haveged/] and activate the respective service.
Configuration is left out because it is normally not needed.

##Setup

### What haveged affects

This module will install the haveged package for your distribution using the default package
management method. It will then activate and start the haveged service.

### Setup requirements

The haveged module requires puppetlabs-stdlib for input validation. Please make sure that this
module is in you module path.

In order to install the haveged package, your system must have the essential distribution
repositories activated. haveged is usually found in the base repository (SLES-11-SP3-Pool and so
on).
On RHEL based systems (Enterprise Linux) like RHEL/CentOS you have to activate Fedora EPEL

### Beginning with haveged

If you want to use this module with all default options simply write the following in you manifest:

```
include haveged
```

or

```
class{'haveged':}
```

## Usage

You may override different parameters and functions:

```
class{'haveged':
  ensure        => 'disabled',
  package_class => '::mystuff::haveged_install',
```

This will install package(s) using a user supplied class and make sure that the
service is stopped and not active upon boot.

ATTENTION: The package_class must provide a parameter 'ensure' and 'packages'!

```
class{'haveged':
  ensure => absent,
}
```

Make sure haveged is completely removed from the system.
For more information regarding parameters consult the RDoc of init.pp

##Limitations

haveged is currently only supported on RHEL and SUSE based distributions.
