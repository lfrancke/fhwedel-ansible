# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "forwarded_port", guest: 50070, host: 50070
  config.vm.network "forwarded_port", guest: 8042,  host: 8042
  config.vm.network "forwarded_port", guest: 8088,  host: 8088
  config.vm.network "forwarded_port", guest: 19888, host: 19888
  config.vm.network "forwarded_port", guest: 18080, host: 18080

  config.vm.provision "shell", inline: "apt install -y python-minimal openjdk-8-jdk"
  config.vm.provision "shell", inline: "cp /vagrant/kill /bin"

  config.vm.provision "ansible" do |ansible|
    ansible.sudo = true
    ansible.playbook = "ansible/site.yml"
    ansible.verbose = false
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

end
