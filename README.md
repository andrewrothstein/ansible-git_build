andrewrothstein.git_build
=========
![Build Status](https://github.com/andrewrothstein/ansible-git_build/actions/workflows/build.yml/badge.svg)

Builds and installs [git](https://github.com/git/git) from source.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.git_build
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
