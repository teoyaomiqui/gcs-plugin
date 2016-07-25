class gcs::pip_package(
  $action,
  $package_name,
)  {

  define gcs::pip_package::exec_pip ($name){
    exec { "pip_install_${name}":
      command  => "pip install -U ${name}",
      provider => shell,
    }
  }
  package {'python-pip':
    ensure => installed,
  }

  case $action {
    'install': {
      package { $package_name:
        ensure   => installed,
        provider => pip,
        require  => Package['python-pip'],
      } ->
      gcs::pip_package::exec_pip { $package_name:
        name     => $package_name,
      }
    }
    'remove': {
      package { $package_name:
        ensure => absent,
        provider => pip,
      }
    }
  }
}

