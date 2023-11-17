sudo apt update
which bc || sudo apt install -y bc
which dkms || sudo apt install -y dkms
which git || sudo apt install -y git
sudo apt install -y linux-headers-$(uname -r)
mkdir ~/git
cd ~/git
#git clone https://github.com/Rhizomatica/rtl8821cu.git
git clone https://github.com/rrottmann/rtl8821cu.git
cd rtl8821cu
make
sudo make install
sudo modprobe 8821cu
