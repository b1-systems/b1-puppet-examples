# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

Puppet::Type.newtype(:gitrepo) do
  @doc = "Manages Git repos"
  ensurable
  newparam(:source) do
    desc "Git source URL for the repo"
    isnamevar
  end
  newparam(:path) do
    desc "Path where the repo should be created"
    validate do |value|
      basepath = File.dirname(value)
      unless File.directory?(basepath)
        raise ArgumentError, "The path %s doesn't exist" % basepath
      end
    end
  end
end
