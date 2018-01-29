# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

#!/bin/bash
NODE="$1"
ENCDATA='/etc/puppetlabs/code/encdata'
#ENCDATA='/etc/puppet/encdata'
DATA="${ENCDATA}/${NODE}.yaml"
if [ ! -r "$DATA" ]; then
  DATA="${ENCDATA}/default.yaml"
fi
cat "$DATA"
