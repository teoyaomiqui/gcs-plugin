class config::backup (
  
$gcs_config_values =   {  'backup_driver'                       => 'cinder.backup.drivers.google',
                          'backup_gcs_bucket'                   => '',
                          'backup_gcs_project_id'               => '',
                          'backup_gcs_credentials_file'         => '/root/key.gcs',
                          'backup_gcs_bucket_location'          => 'US',
                          'backup_gcs_enable_progress_timer'    => 'True',
                          'backup_gcs_stprage_class'            => 'NEARLINE',
                          'backup_gcs_user_agent'               => 'gcscinder'
                       }
) {
  cinder_config {
     'DEFAULT/backup_driver':                    value   => $gcs_config_values['backup_driver'],
     'DEFAULT/backup_gcs_bucket':                value   => $gcs_config_values['backup_gcs_bucket'],
     'DEFAULT/backup_gcs_project_id':            value   => $gcs_config_values['backup_gcs_project_id'],
     'DEFAULT/backup_gcs_credentials_file':      value   => $gcs_config_values['backup_gcs_credentials_file'],
     'DEFAULT/backup_gcs_bucket_location':       value   => $gcs_config_values['backup_gcs_bucket_location'],
     'DEFAULT/backup_gcs_enable_progress_timer': value   => $gcs_config_values['backup_gcs_enable_progress_timer'],
     'DEFAULT/backup_gcs_stprage_class':         value   => $gcs_config_values['backup_gcs_stprage_class'],
     'DEFAILT/backup_gcs_user_agent':            value   => $gcs_config_values['backup_gcs_user_agent']
  }

