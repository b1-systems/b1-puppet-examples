# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

stage { 'pre': }
stage { 'post': }
Stage['pre'] -> Stage['main'] -> Stage['post']

class repositories() { notify { 'repositories': } }
class software_install() { notify { 'install': } }
class software_config() { notify { 'config': } }

class { 'repositories':
  stage => 'pre',
}
class { 'software_install':
  stage => 'main',
}
class { 'software_config':
  stage => 'post',
}
