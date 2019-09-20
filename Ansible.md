# How to set host_key_checking=false in ansible inventory file?
[Original](https://stackoverflow.com/questions/23074412/how-to-set-host-key-checking-false-in-ansible-inventory-file)

**inventory:**
```
ansible_ssh_common_args='-o StrictHostKeyChecking=no'
```
**host:**
```
ansible_ssh_extra_args='-o StrictHostKeyChecking=no'
```
hosts/inventory options will work with connection type ssh and not paramiko. Some people may strongly argue that inventory and hosts is more secure because the scope is more limited.

***global:***

You can do it either in the /etc/ansible/ansible.cfg or ~/.ansible.cfg file:
```ini
[defaults]
host_key_checking = False
```
Or you can setup and env variable (this might not work on newer ansible versions):
```
export ANSIBLE_HOST_KEY_CHECKING=False
```