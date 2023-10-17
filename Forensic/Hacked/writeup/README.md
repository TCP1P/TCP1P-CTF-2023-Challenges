# Hacked

You need to answer several questions to obtain the flag

## Intended PoC:
1. forensic-tcp1p

Read `/etc/hostname` to obtain the hostname

2. WordPress:6.3.1

You can check the application inside `/var/www/html`

3. 4

Check `/var/www/html/wordpress/wp-content/plugins`

4. CVE-2023-4521

Check `/wp-content/plugins/import-xml-feed/uploads/169227090864de013cac47b.php` and then check https://wpscan.com/vulnerability/de2cdb38-3a9f-448e-b564-a798d1e93481/

5. /var/www/html/wordpress/wp-content/plugins/jetpack/class.jetpacks.php

The easiest way to obtain the other backdoor is by searching a PHP function to run a OS command (exec, eval, popen, etc.)

6. /etc/passwd

The `/etc/passwd`file was writable. You can see there is a suspicious user at the end of the file.

Reference: https://book.hacktricks.xyz/linux-hardening/privilege-escalation#writable-etc-passwd

7. /root/.bashrc

You will notice that the `.bashrc` file size was very large, and you will find a malicious command inside the file.

8. 159.223.46.222:9999

Just run the malicious command and there is an error like this in the output

```
bash: connect: Connection refused
bash: /dev/tcp/159.223.46.222/9999: Connection refused
```