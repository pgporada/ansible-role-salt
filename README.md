# Ansible Role: ansible-role-salt
This role does XYZ. This is a boilerplate. Fill me out.

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
        - ansible-role-salt
    ...

- - - -

Lint all the yaml files with [yamllint](https://github.com/adrienverge/yamllint). Warnings are ok, fix all errors before committing back up.

    

Set up test-kitchen dependencies

    git clone git@github.com:DRrawlins/ansible-role-salt.git
    bundle install
    bundle update

Test-kitchen needs our bitbucket ssh key so it can pull code from Bitbucket on our behalf.

    ssh-add -D
    ssh-add -k ~/BITBUCKET_KEY_NAME
    ssh-add -L
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

- - - -
# Theme Music
[The Slackers - Same Everyday](https://www.youtube.com/watch?v=Qy_2OqTvW34)
