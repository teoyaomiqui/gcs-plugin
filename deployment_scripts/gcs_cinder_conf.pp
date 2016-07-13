notice('MODULAR: gcs_cinder_config.pp')

$gcs_config_values                    = hiera_hash('gcs')

class { '::config::backup' :
  gcs_config_values                   => $gcs_config_values
}
