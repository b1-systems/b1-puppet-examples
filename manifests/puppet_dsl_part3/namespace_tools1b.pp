# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class params() { $pkg = 'htop' }

class tools() { notify { "pkg ist ${::params::pkg}": } }

include tools
include params

# Warning: Scope(Class[Tools]): Could not look up qualified variable '::params::pkg'; class ::params has not been evaluated
# Notice: Compiled catalog for puppet.local.site in environment production in 0.03 seconds
# Notice: pkg ist
# Notice: /Stage[main]/Tools/Notify[pkg ist ]/message: defined 'message' as 'pkg ist '
# Notice: Finished catalog run in 0.06 seconds
