# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "web"
  config.vm.forward_port 80, 8080

  config.vm.provision :chef_client do |chef|
    chef.chef_server_url = "https://api.opscode.com/organizations/bigruby"
    chef.validation_key_path = ".chef/bigruby-validator.pem"
    chef.validation_client_name = "bigruby-validator"
  end
end
