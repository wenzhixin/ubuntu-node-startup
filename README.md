## ubuntu-node-startup

Startup script for Ubuntu systems for running node app when rebooting from /etc/init conf.

### Why ubuntu-node-startup?

When my vps was rebooted occassionally by the hosting provider, my node.js app was not coming back online.

### How to user?

Download the zip file:

```
cd ~
wget https://github.com/wenzhixin/ubuntu-node-startup/archive/master.zip
unzip node-startup-master.zip
```

```cd``` to your node app (example: app-name) and run:

```
cd ~/www/app-name
~/node-startup-master/conf.sh
```

Copy the config file to ```/etc/init/```:

```
sudo cp app-name.conf /etc/init/
```

Test that it all works:

```
sudo start app-name
sudo status app-name
sudo restart app-name
sudo stop app-name
```

Finally, reboot to be sure app starts automatically:

```
sudo reboot
```

### Supported OS

Tested with Ubuntu 11.04, Ubuntu 11.10, Ubuntu 12.04, Ubuntu 12.10.

### LICENSE

[The MIT License](https://github.com/wenzhixin/ubuntu-node-startup/LICENSE)