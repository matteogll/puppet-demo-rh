# Puppet Demo (Red Hat)

Some Puppet demo in Red Hat based environment. 
This demo uses Vagrant in order to setup a ready to use development environment.

# Author
* Matteo Galli - mondora.com

# Try it!

## Requirements

Install Vagrant for your system: https://www.vagrantup.com/

## Start Vagrant Machine

* git clone https://github.com/matteogll/puppet-demo.git`
* Start the virtual machine by using `vagrant up` command (from the project root)
* SSH into the VM: `vagrant ssh`
* The shared folder of the guest OS is: `/vagrant`

# List of demos
## MTU
Use Puppet to change the MTU of eth0 nic.

Path of manifest: /vagrant/modules/mtu/manifest/init.pp

* `vagrant ssh`: enter into the guest OS
* get root privileges: `sudo su`
* check that eth0 has default value of MTU (eg: 1500)
* `puppet apply -v -e "include mtu"`
* check that eth0 has the new value of MTU, specified in the manifest file (eg: 9000)

Note:

The network plugin is available here: https://forge.puppetlabs.com/razorsedge/network

# Note

Vagrantfile will make a symbolic link to `/vagrant/modules` in order to override default Puppet modules directory 
`/etc/puppet/modules`.