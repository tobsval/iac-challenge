Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.disksize.size = '50GB'

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048" # 2GB+ required by CentOS to boot
    vb.cpus = "2"
  end

  config.vm.define "docker1" do |docker1|
    docker1.vm.hostname = "docker1"
    docker1.vm.network "private_network", ip: "192.168.100.10"
  end

  config.vm.define "docker2" do |docker2|
    docker2.vm.hostname = "docker2"
    docker2.vm.network "private_network", ip: "192.168.100.11"
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbooks/playbook.yml"
    ansible.pip_install_cmd = "curl https://bootstrap.pypa.io/pip/2.7/get-pip.py | sudo python"
    ansible.install_mode = "pip"
    ansible.version = "latest"
  end

end
