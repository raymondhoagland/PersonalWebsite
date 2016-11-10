Vagrant.configure("2") do  |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.hostname = "vagrant-enviro"

    config.vm.provision "shell", path: "./shell_scripts/vagrant_setup.sh"
end
