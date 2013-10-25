{% elif grains['os'] == 'Ubuntu' %}
apache2:
  pkg:
    - name: apache2
    - installed
  service:
    - name: httpd
    - running

apache2-php-packages:
    pkg:
        - installed
        - names:
            - libapache2-mod-php5

a2enmod_rewrite:
    cmd:
        - name: a2enmod rewrite
        - run
        - require:
            - pkg: apache2
        - require_in:
            - service: apache2
{% endif %}
