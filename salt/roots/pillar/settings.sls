phpmyadmin:
  server_name: phpmyadmin.local
  server_admin: admin@drupal.local
  allow_from: 20.20.20.0/24
  logs_dir: /vagrant/www_logs

default_vhost:
  server_name: drupal.local
  doc_root: /var/www/drupal.local
  server_admin: admin@drupal.local
  allow_override: All
  allow_from: All
  logs_dir: /vagrant/www_logs

default_db:
  db_name: drupal-db
  db_user: drupal
  db_pass: drupal-password

mysql_server:
  root_username: root
  root_password: root-password
  bind_address: 127.0.0.1
  version: 5.5

apc:
  memory: 64

timezone: 'Europe/Bucharest'
