class demonet {


network::if::dynamic { 'enp0s3':
  ensure        => 'up',
  mtu           => '3000',
}

#network::if::dynamic { 'eth0':
#  ensure        => 'down',
#}

#network::if::dynamic { 'eth2':
#  ensure        => 'down',
#}

#network::if::dynamic { 'eth3':
#  ensure        => 'down',
#}

}
