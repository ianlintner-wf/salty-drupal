php5-pkgs:
  pkg.installed:
    - names:
      - php5
      - php5-mysql
      - php5-curl
      - php5-cli
      - php5-cgi
      - php5-dev
      - php-pear
      - php5-gd

apache2:
  pkg:
    - installed

pear-drush:
  cmd.run:
    - name: pear channel-discover pear.drush.org & pear install drush/drush