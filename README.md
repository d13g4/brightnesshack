# brightnesshack
Dirty hacking to use the Function-Keys to change brightness with lubuntu and i3 on a thinkpad a275

## explanation
i couldnt get the function keys working so i made a dirty hack to do it anyway, even if its highly unrecommended.
i wrote scripts which take the value from /sys/class/.../brightness and add or decrese them by 5. (as its a value between 0 and 255 its a good portion and nice brightnesschange, in my oppinion)
as normally the brightness-file is write protected for the user, i wrote a systemd service to change the filepermissions to 777 on each startup, so that anyone could do anything with it. (777 was the fastest because i didnt need to test or google when it would work)
after that i bound the fn keys (233 and 232) to the scripts in my i3 config, so that they will be executed when pressing the keys.
its dirty but it works...

## installation
i repeat that its really not recommended to do it this way - if you have a better way (that is working) please tell me, but after about 12 hours of trying and debugging i had enough. if you are there as well, feel free to try ;-)


### step 1 - getting the scripts in place
put the scripts in your .config/ folder in home
### step 2 - the i3/config
i dont recommend to replace your config, but if you want, you can do that - i recommend to add the last 2 or 3 lines, the bindcodes, to your config.
if you want to store the bright_dec.sh or bright_inc.sh in another location, dont forget to change it to that location here in your config.
### step 3 - creating a systemd service
put the brightnesshack.service file in the systemd directory: /etc/systemd/system/
and enable the service with systemctl enable brightnesshack.service as root (or with sudo)
### step 4 - reboot and have (hopefully) salvation
just reboot the system and get the sweet feeling of sanity back, as the brightness finally changes when pressing the f\*n-keys!

