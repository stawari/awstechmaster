# create sudoer user "cloud_user" and add to sudoers
# create user

useradd -m -s /bin/bash digitalocean
usermod -aG sudo digitalocean

# add public key from "C:\GDrive\Study\AWS\Key\techmaster_key.pub" to digitalocean
mkdir /home/digitalocean/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA1x3lsg4wxTX5CPNP1VmDB0YvyGie1nGKXHhCOJU5NH44V6lq8NIwlufsusu8PiHVKFAMJPu8aVkj2i8Fysu1wrusOuewpOZCIinrKclCqUPWq36v8UmcrKw7ndFMFm1hrAivtKS2LSi19JolwZ5gqMbsaEtQ8/01AZyNBotKgORuQYqp8rL61KuPwb+n2ynyb6t31hQdQImP6xpuySeZ3Wd5BYSrppf7SrVj20zBzRRboHfUu4US1kFcE8wo4t0mu8ZkvuOa7xbW+aGB3rAoBVJb39An5tmR2df8zqjrUIBA5edUYiKYlL7JmLqLIplqCQF39AZ9rOFM9bovNlRDQw==" >> /home/digitalocean/.ssh/authorized_keys
chown -R digitalocean:digitalocean /home/digitalocean/.ssh
chmod 700 /home/digitalocean/.ssh


