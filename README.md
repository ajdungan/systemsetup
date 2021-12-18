# systemsetup

# arch


# ubuntu/debian
bash -c 'apt update; apt install -y wget curl git; cd ~/scripts;  rm -R systemsetup; git clone https://github.com/ajdungan/systemsetup.git; cd systemsetup; chmod 774 *.sh'

# Windows
## install chocolatey
in powerShell -> Run As Administrator
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

set global setting to accept all licensing etc without confirmation

choco feature enable -n=allowGlobalConfirmation



# Install chocolatey
## For more info on chocolatey, see: https://chocolatey.org/docs/getting-started
## For more info on this install approach: https://chocolatey.org/install#individual
