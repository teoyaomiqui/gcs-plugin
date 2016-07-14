class gcs::config (
$gcs_backup_driver =      'cinder.backup.drivers.google',
$gcs_config_values =   {  'backup_gcs_bucket'                   => $gcs::settings['backup_gcs_bucket'],
                          'backup_gcs_project_id'               => $gcs::settings['backup_gcs_project_id'],
                          'backup_gcs_credentials_file'         => $gcs::settings['backup_gcs_credentials_file'],
                          'backup_gcs_bucket_location'          => $gcs::settings['backup_gcs_bucket_location'],
                          'backup_gcs_enable_progress_timer'    => $gcs::settings['backup_gcs_enable_progress_timer'],
                          'backup_gcs_storage_class'            => $gcs::settings['backup_gcs_storage_class'],
                          'backup_gcs_user_agent'               => $gcs::settings['backup_gcs_user_agent'],
                       }
) {

  cinder_config {
     'DEFAULT/backup_driver':                    value   => $gcs_backup_driver;
     'DEFAULT/backup_gcs_bucket':                value   => $gcs_config_values['backup_gcs_bucket'];
     'DEFAULT/backup_gcs_project_id':            value   => $gcs_config_values['backup_gcs_project_id'];
     'DEFAULT/backup_gcs_credentials_file':      value   => $gcs_config_values['backup_gcs_credentials_file'];
     'DEFAULT/backup_gcs_bucket_location':       value   => $gcs_config_values['backup_gcs_bucket_location'];
     'DEFAULT/backup_gcs_enable_progress_timer': value   => $gcs_config_values['backup_gcs_enable_progress_timer'];
     'DEFAULT/backup_gcs_stprage_class':         value   => $gcs_config_values['backup_gcs_stprage_class'];
     'DEFAILT/backup_gcs_user_agent':            value   => $gcs_config_values['backup_gcs_user_agent'];
  }
}

