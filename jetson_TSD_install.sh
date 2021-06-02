# Update everything
sudo apt update
sudo apt upgrade -y

# Install prerequisites
sudo apt install python python3 python-pip python3-pip -y

 #I have no clue which of these libraries is actually needed to install pyNaCl.
sudo apt install curl libffi-dev python-openssl libssl-dev zlib1g-dev gcc g++ make -y

python -m pip install --upgrade pip setuptools wheel

# Make sure all packages previously downloaded are up to date
sudo apt update
sudo apt upgrade -y

# Install docker-compose
sudo python -m pip install docker-compose

# Get TSD Repo
git clone https://github.com/TheSpaghettiDetective/TheSpaghettiDetective

# add docker-compose.override.yml files
mv Jetson_TSD_Fullinstall/override_file_writer.py TheSpaghettiDetective
cd TheSpaghettiDetective
python3 override_file_writer.py

# Clean up unneeded files
sudo rm -r override_file_writer.py
cd ..
sudo rm -r Jetson_TSD_Fullinstall
sudo apt clean
sudo apt autoremove

# Start the TSD Server!
cd TheSpaghettiDetective
sudo docker-compose up -d

# Run docker on startup
sudo systemctl enable docker
