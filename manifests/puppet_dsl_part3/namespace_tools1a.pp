# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class params() { $pkg = 'htop' }

class tools() { notify { "pkg ist ${::params::pkg}": } }

include params
include tools

# Notice: Compiled catalog for puppet.local.site in environment production in 0.03 seconds
# Notice: pkg ist htop
# Notice: /Stage[main]/Tools/Notify[pkg ist htop]/message: defined 'message' as 'pkg ist htop'
# Notice: Finished catalog run in 0.06 seconds
