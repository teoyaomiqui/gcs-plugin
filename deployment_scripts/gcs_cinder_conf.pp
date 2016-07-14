notice('MODULAR: gcs_cinder_config.pp')
include gcs
class { 'gcs::backup': }
class { 'gcs::services': }
