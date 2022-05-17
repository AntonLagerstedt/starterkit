apps:
  pkg.installed:
    - pkgs:
      - micro
      - apache2
      - gimp
      - vlc
      - okular

a2enmod userdir:
  cmd.run:
    - creates: /etc/apache2/mods-enabled/userdir.conf

apache2.service:
  service.running:
    - watch:
       -  cmd: 'a2enmod userdir'

/usr/local/bin:
  file.recurse:
    - source: salt://starterkit/commands
    - user: root
    - group: root
    - dir_mode: 0755
    - file_mode: 0755

/var/www/html/index.html:
  file.managed:
    - source: salt://starterkit/index.html

/home/anton/.config/micro/settings.json:
  file.managed:
    - source: salt://starterkit/settings.json
