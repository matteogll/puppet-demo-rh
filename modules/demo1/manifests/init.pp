class demo1 {

  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure => running,
  }

  demo1::config{ 'setTitle':
    title => 'Hello Puppet',
  }


  define demo1::config($title) {
    file { "/usr/share/nginx/html/index.html":
      require => Package["nginx"],
      content => template("demo1/index.html.erb"),
    }
  }


}
