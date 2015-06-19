# PUPPET DEMO VAGRANTFILE

# Startup scripts
$script = <<SCRIPT
yum update -y
yum install -y nano
rm -rf /etc/puppet/modules/
ln -s /vagrant/modules /etc/puppet/modules
puppet module install razorsedge-network
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"
# BRIDGED NETWORK: config.vm.network "public_network"
# NAT NETWORK:
  config.vm.network "forwarded_port", guest: 80, host: 7081
  config.vm.provision "shell", inline: $script
end
