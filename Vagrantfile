Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.ssh.forward_agent = true

  #config.vm.network :forwarded_port, host: 4567, guest: 4567

  config.vm.provision :shell, :path => 'provision.sh'

end
