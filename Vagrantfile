Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true	  

  config.vm.define "rancher-srv" do |srv|
    srv.vm.box = "geerlingguy/ubuntu1804" 
    srv.vm.hostname = "rancher-srv.test"
    srv.vm.network "private_network", ip: "192.168.60.10"
    srv.vm.provision "shell", path: "docker.sh"
    srv.vm.provision "shell", path: "rancher-ct.sh"
    srv.vm.provider "virtualbox" do |vb|
      vb.name = "rancher-srv"
      vb.memory = "4096"
      vb.cpus = "2"
    end
  end  
end

