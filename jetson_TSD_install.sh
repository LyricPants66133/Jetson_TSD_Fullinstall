# Update everything
sudo apt-get update -y
sudo apt-get upgrade -y

# Install prerequisites
sudo apt-get install python -y
sudo apt-get install python3 -y
sudo apt-get install python-pip -y

 #I have no clue which of these libraries is actually needed to install pyNaCl.
sudo apt-get install curl python3-pip libffi-dev python-openssl libssl-dev zlib1g-dev gcc g++ make -y

python -m pip install --upgrade pip setuptools wheel
sudo python -m pip install pipenv # MUST BE SUDO, otherwise the command will not be recognized by bash

# Make sure all packages previously downloaded are up to date
sudo apt-get update -y
sudo apt-get upgrade -y

# Install docker-compose
sudo pipenv install docker-compose --skip-lock

# Get TSD Repo
cd ..

git clone https://github.com/TheSpaghettiDetective/TheSpaghettiDetective

# add docker-compose.override.yml files
cd Jetson_TSD_Fullinstall
sudo python3 override_file_writer.py

# Clean up unneeded files
cd ..
sudo rm -r Jetson_TSD_Fullinstall

# Start the TSD Server!
pipenv shell
cd TheSpaghettiDetective
sudo docker-compose up -d

# Run docker on startup

sudo systemctl enable docker