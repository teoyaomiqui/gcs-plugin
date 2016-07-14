notice('MODULAR: gcs_cinder_config.pp')
$services = ['cinder-backup']
include gcs
class { 'gcs::backup': }
class { 'gcs::servcies': }
