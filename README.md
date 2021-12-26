# systemsetup

# arch


# ubuntu/debian
bash -c 'sudo apt update; sudo apt install -y wget curl git; cd ~/scripts; git clone https://github.com/ajdungan/systemsetup.git; cd systemsetup; chmod 774 *.sh'

#debloat and configure firefox
see Firefox configuration hardening user.js page, use the relaxed version
https://github.com/pyllyukko/user.js/tree/relaxed


# Windows
## install chocolatey
in powerShell -> Run As Administrator
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

set global setting to accept all licensing etc without confirmation

choco feature enable -n=allowGlobalConfirmation

## For more info on chocolatey, see: https://chocolatey.org/docs/getting-started
## For more info on this install approach: https://chocolatey.org/install#individual

# trex miner
mkdir C:\miner
cd C:\miner
wget -O miner.zip  https://github.com/trexminer/T-Rex/releases/download/0.24.8/t-rex-0.24.8-win.zip
Add-Type -A 'System.IO.Compression.FileSystem';
 [IO.Compression.ZipFile]::ExtractToDirectory('C:\miner\miner.zip', 'C:\miner')
.\t-rex -a ethash -o us-eth.2miners.com:2020 -u 3LU4DWe3gX8mbTZMwZe2KJTLu2czMd6b25 -w ajdworkerNAME -p x
