class services {
$services = ['cinder-backup'] 
service { $services: ensure => running }
Cinder_config <||> ~> Service[$services]
}
