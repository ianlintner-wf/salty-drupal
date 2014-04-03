sudo a2enmod rewrite:
  cmd:
    - run
    - unless: test -f /etc/apache2/mods-enabled/rewrite.load
    - require:
      - pkg: apache2

apache2:
  pkg:
    - installed
  service:
    - running
    - reload: True
    - watch:
      - file: /etc/apache2/apache2.conf
      - cmd: sudo a2enmod rewrite


/etc/apache2/apache2.conf:
  file.managed:
    - source: salt://apache2.conf
