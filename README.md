# Ansible Role: ansible-role-salt
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-salt-blue.svg)](https://galaxy.ansible.com/pgporada/salt/)
[![License](https://img.shields.io/badge/license-ISC-brightgreen.svg)](LICENSE)

Installs and configures a salt minion/master.

- - - -
# Role Variables

This var does XYZ

    var_name: "default value"

This var does ABC

    some_other_var: "default value"

- - - -
# Example Playbook

    ---
    - hosts: localhost
      connection: local
      become: true
      become_method: sudo
      roles:
        - pgporada.repo-salt
        - ansible-role-salt
    ...

- - - -
# Hacking away at this project

Lint all the yaml files with [yamllint](https://github.com/adrienverge/yamllint). Warnings are ok, fix all errors before committing back up.

Run your changes through a local test-kitchen setup.

    git clone git@github.com:pgporada/ansible-role-salt.git
    bundle install
    bundle update
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

- - - -
# Theme Music
[The Aggrolites - Faster Bullet](https://www.youtube.com/watch?v=GwQjzsB6TVM)

- - - -
# Author Information and License

ISC

[Phil Porada](https://github.com/pgporada) and [Dan Rawlins](https://github.com/drrawlins) 2016
