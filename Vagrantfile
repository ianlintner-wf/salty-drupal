Vagrant.configure("2") do |config|
  ## Choose your base box
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :private_network, ip: "192.168.33.142"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  ## For masterless, mount your file roots file root
  config.vm.synced_folder "salt/roots/", "/srv/"
  config.vm.synced_folder "../", "/var/sites", :nfs => { :mount_options => ["dmode=777","fmode=777"] } 
  
  #config.vm.provision :shell, :path => "bootstrap.sh"

  # Provider-specific configuration so you can fine-tune VirtualBox for Vagrant.
  # These expose provider-specific options.
  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "4096", "--cpus", "4", "--ioapic", "on"]
  end

  ## Set your salt configs here
  config.vm.provision :salt do |salt|

    ## Minion config is set to ``file_client: local`` for masterless
    salt.minion_config = "salt/minion"

    ## Installs our example formula in "salt/roots/salt"
    salt.run_highstate = true

  end
end
