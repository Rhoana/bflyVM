sudo bash
sudo apt-get -y install virtualenv
sudo apt-get -y install python-pip
mkdir ~/env 

cd
virtualenv ~/env/butterfly
. ~/env/butterfly/bin/activate
git clone https://github.com/Rhoana/butterfly.git
cd butterfly
pip install -U pip
pip install -r requirements.txt
pip install -e .

cd
virtualenv ~/env/dojo
. ~/env/dojo/bin/activate
git clone https://github.com/Rhoana/dojo.git
cd dojo/_dojo
pip install -U pip
pip install -e .

cd
virtualenv ~/env/mb
. ~/env/mb/bin/activate
git clone https://github.com/Rhoana/mb.git
cd mb
pip install -U pip
pip install -e .

cd
virtualenv ~/env/3dxp
git clone https://github.com/Rhoana/3dxp.git
cd 3dxp/PYTHON
pip install -r requirements.txt
