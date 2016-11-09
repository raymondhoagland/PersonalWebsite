Vagrant.configure("2") do  |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.hostname = "vagrant-enviro"

    config.vm.provision "shell", path: "./shell_scripts/vagrant_setup.sh"
end
