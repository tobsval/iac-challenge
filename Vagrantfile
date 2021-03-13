Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  #config.vm.provision "ansible", playbook: "vm-configure.yml"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048" # 2GB+ required by CentOS to boot
    vb.cpus = "2"
  end

  config.vm.define "docker1" do |docker1|
    docker1.vm.hostname = "docker1"
    docker1.vm.network "private_network", ip: "192.168.10.100"
  end

  config.vm.define "docker2" do |docker2|
    docker2.vm.hostname = "docker2"
    docker2.vm.network "private_network", ip: "192.168.10.101"
  end
end
