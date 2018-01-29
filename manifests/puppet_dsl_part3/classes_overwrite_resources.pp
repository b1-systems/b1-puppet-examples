# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html


class baseline::default() {

  $myfile='/var/tmp/blahfasel'

  file{$myfile:
    content => "Hello World\n",
    owner   => root,
  }

}

class baseline::special() inherits baseline::default {

  File[$myfile] {
    content => "Good Bye World\n",
    owner   => undef,
  }

}

include baseline::special
