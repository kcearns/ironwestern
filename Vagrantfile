# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  config.vm.box = "williamyeh/ubuntu-trusty64-docker"
  config.vm.box_check_update = true

  config.vm.provider "virtualbox" do |vb|
     vb.memory = 4096
     vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
  		curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
  		chmod +x /usr/local/bin/docker-compose
  		curl -L https://github.com/docker/machine/releases/download/v0.8.2/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine
  		chmod +x /usr/local/bin/docker-machine
  		echo "export DO_TOKEN=ENV['DO_TOKEN']" >> /home/vagrant/.bashrc
  SHELL
end
