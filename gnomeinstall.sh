Sudo apt install xorg

Sudo apt install gnome-core gnome-terminal


sudo apt install gnome-themes-ubuntu


sudo apt install gnome-tweaks -y


sudo apt install gnome-shell-extensions-gpaste gpaste


#apps
sudo apt install gparted arandr synaptic htop -y

#apps to remove
sudo apt purge snapd -y


#ppa apps
#stacer
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt install stacer -y

#compile/install from source apps
 apt install cmake libncurses5-dev libncursesw5-dev git
 git clone https://github.com/Syllo/nvtop.git
 mkdir -p nvtop/build && cd nvtop/build
 cmake ..
 make
 make install
