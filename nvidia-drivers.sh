#add ppa
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update

#install driver, confirm appropriate/best driver for your card,as of now for rtx 3090 it is the 495 driver
sudo apt install nvidia-driver-495 -y
