# Exploit for CVE-2021-3560 (Polkit) - Local Privilege Escalation

![GitHub CVE Cover](https://user-images.githubusercontent.com/23003787/172497877-73d7bd84-0dde-411c-af18-03064b459a19.png)

**Like this repo? Give us a ⭐!**

*For educational and authorized security research purposes only.*

## Exploit Author
[@UNICORDev](https://unicord.dev) by ([@NicPWNs](https://github.com/NicPWNs) and [@Dev-Yeoj](https://github.com/Dev-Yeoj))

## Vulnerability Description
It was found that polkit could be tricked into bypassing the credential checks for D-Bus requests, elevating the privileges of the requestor to the root user. This flaw could be used by an unprivileged local attacker to, for example, create a new local administrator. The highest threat from this vulnerability is to data confidentiality and integrity as well as system availability.

## Exploit Description
Use this exploit on a system with vulnerable Polkit software to add a new user with Sudo privileges. Specify a custom username and/or password as CLI arguments, if desired. Once the new user is created, ```su``` to this user and ```sudo su``` for full root privileges.

## Usage
```bash
  python3 exploit-CVE-2021–3560.py [-u <username> -p <password>]
  python3 exploit-CVE-2021–3560.py -h
```

## Options
```bash
  -u    Custom username. Provide username to be created. (Optional)
  -p    Custom password. Provide password to be configured for user. (Optional)
  -h    Show this help menu.
```

## Download
[Download exploit-CVE-2021-3560.py Here](https://raw.githubusercontent.com/UNICORDev/exploit-CVE-2021-3560/main/exploit-CVE-2021-3560.py)

## Exploit Requirements
- python3
- accountsservice
- gnome-control-center
- openssl
- sudo

## Demo
![zmjijO5](https://user-images.githubusercontent.com/23003787/169427774-e79a6943-d6f3-496c-977c-18a8b1c793fa.gif)

*User in privileged ```wheel``` group.*

## Tested On
Polkit Version 0.105 (Ubuntu 20.04.2 LTS)

## Applies To
Polkit Versions 0.0 - 0.118

## Test Environment
```bash
apt install accountsservice gnome-control-center openssl sudo
```

## Warning
⚠️ Running this exploit on a system with a GUI may result in a pop-up password prompt that cannot be closed and may require a full system reboot. You may be able to close this pop-up by clicking "Cancel" repeatedly. However, this can fully be avoided if in an SSH or reverse shell session. Simply ```ssh localhost``` to avoid this issue.

## Credits
- https://nvd.nist.gov/vuln/detail/CVE-2021-3560
- https://app.hackthebox.com/machines/Paper
- https://github.blog/2021-06-10-privilege-escalation-polkit-root-on-linux-with-bug/
- https://github.com/Almorabea/Polkit-exploit/blob/main/CVE-2021-3560.py
