class services {

service { $services: ensure => running }
Cinder_config <||> ~> Service[$services]
}
