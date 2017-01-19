# 2 is the vagrant api version. Thanks to orendon, used his vagrant-rails repo as an example
# https://github.com/orendon/vagrant-rails

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  # allows you to run rails stuff from windows
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  # shell script that does some magical shit
  config.vm.provision :shell, path: "./VagrantScript/vagrant_bootstrap.sh", privileged: false
end
