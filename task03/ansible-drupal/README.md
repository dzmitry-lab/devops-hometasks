power on vagrant VM (debian10 + lxc) - ansible_local provision debian10_lxc.yml
ansible playbook creates 2 containers (containers_lxc.yml):
1. mysql
2. web (apache + php + drupal)
can test visiting http://127.0.0.1:8080

you should enter password for db when drupal configuration windows asks: druPaaaL_user_Passw0RD