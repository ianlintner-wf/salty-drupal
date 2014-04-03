Vagrant.configure("2") do |config|
  ## Choose your base box
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  ## For masterless, mount your file roots file root
  config.vm.synced_folder "../", "/var/sites"
  config.vm.synced_folder "salt/roots/", "/srv/"



  config.vm.network :private_network, ip: "192.168.33.42"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  #config.vm.provision :shell, :path => "bootstrap.sh"

  ## Set your salt configs here
  config.vm.provision :salt do |salt|

    ## Minion config is set to ``file_client: local`` for masterless
    salt.minion_config = "salt/minion"

    ## Installs our example formula in "salt/roots/salt"
    salt.run_highstate = true

  end
end
