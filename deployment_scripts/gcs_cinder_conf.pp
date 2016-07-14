notice('MODULAR: gcs_cinder_config.pp')
$services = ['cinder-backup']
$gcs_config_values                    = hiera_hash('gcs')

class { '::config::backup' :
  gcs_config_values                   => $gcs_config_values
}

service { $services:
  ensure => running;
}

Cinder_config <||> ~> Service[$services]



