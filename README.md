# systemsetup

# arch


# ubuntu/debian
```
bash -c 'sudo apt update; sudo apt install -y wget curl git; cd ~/scripts; git clone https://github.com/ajdungan/systemsetup.git; cd systemsetup; chmod 774 *.sh'
```
## setup rescue/backup distro
The grml-rescueboot package enables grub to boot directly from .iso distro images saved locally without having to write them to a USB or other drive. By default it will just look for iso files in /boot/grml, so save an of your favorate rescue/imaging/cloning/other live distros to boot from. one downoaded simply update grub with the update-grub command and it will automatically add an option to boot from the rescue distro downloaded. This is also possible to configure manualling by editing some of the grub configuration files and manually pointing them to a distro image...but much easier to just install grml-rescueboot.

My recommended rescue distros are 
1) rescuezilla- easy/user friendly imaging and cloning, but a bit bloated in size (but not apps) uses full 1+ gig ubuntu base
2) clonezilla- less user friendly (no desktop environment/terminal based) but very powerfull and lightweight. Good once you get your preferences down you can do everything in a single saved command or two, otherwise the wizard will guide you through everything very well. ~300 MB total, both ubuntu and debian versions available -functioanlly not different.
3) Sparkylinux rescue edition, loads of great apps, debian based 

```
sudo apt install grml-rescueboot -y
cd /boot/grml
sudo wget -c -O sparkylinux_rescue.iso https://downloads.sourceforge.net/project/sparkylinux/rescue/sparkylinux-2021.12-x86_64-rescue.iso
sudo wget -c -O clonezilla.iso https://downloads.sourceforge.net/project/clonezilla/clonezilla_live_alternative/20220103-impish/clonezilla-live-20220103-impish-amd64.zip
sudo update-grub

```

#debloat and configure firefox
see Firefox configuration hardening user.js page, use the relaxed version
https://github.com/pyllyukko/user.js/tree/relaxed


# Windows
## install chocolatey
in powerShell -> Run As Administrator
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
Next: set global setting to accept all licensing etc without confirmation
```
choco feature enable -n=allowGlobalConfirmation
```
### For more info on chocolatey, see: https://chocolatey.org/docs/getting-started
### For more info on this install approach: https://chocolatey.org/install#individual

## auto login
run: 
```
reg ADD “HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device” /v DevicePasswordLessBuildVersion /t REG_DWORD /d 0 /f
```

# trex miner
```
mkdir C:\miner
cd C:\miner
wget -O miner.zip  https://github.com/trexminer/T-Rex/releases/download/0.24.8/t-rex-0.24.8-win.zip
Add-Type -A 'System.IO.Compression.FileSystem';
 [IO.Compression.ZipFile]::ExtractToDirectory('C:\miner\miner.zip', 'C:\miner')
.\t-rex -a ethash -o us-eth.2miners.com:2020 -u 3LU4DWe3gX8mbTZMwZe2KJTLu2czMd6b25 -w ajdworkerNAME -p x
```
