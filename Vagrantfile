VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "parallels/ubuntu-14.04"
  config.vm.provision :shell, :path => "./puppet-bootstrap/bootstrap.sh"

  config.vm.provision :puppet do |puppet|
    puppet.module_path      = "puppet-modules"
    puppet.manifests_path  = "puppet-manifests"
  end
end
