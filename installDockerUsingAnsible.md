
- Install ansible
```bash
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
- Install docker role
```bash
ansible-galaxy install angstwad.docker_ubuntu
```
- Create a ansible play
/tmp/docker.yml
```yaml
---
# installing docker
- name: Installing and configuring Docker
  hosts: local
  connection: local
  roles:
    - angstwad.docker_ubuntu
```

- Run the play
```bash
sudo ansible-playbook /tmp/docker.yml
```
