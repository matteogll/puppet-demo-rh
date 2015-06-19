class mtu {

  network::if::dynamic { 'eth0':
    ensure        => 'up',
    mtu           => '9000',
  }

}
