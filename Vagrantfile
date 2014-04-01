# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "nginx-lua-test"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20131103.box"
  config.vm.hostname = 'nginx-lua-test'

  config.vm.network :private_network, ip:"192.168.50.12"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.omnibus.chef_version = :latest

  # config.vm.network :public_network
  # config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

#  config.vm.provision :chef_solo do |chef|
#    chef.cookbooks_path = "/vagrant/site-cookbooks"
#    chef.add_recipe "base"
#    chef.add_recipe "nginx_lua_test"
#  end

end
