# Update everything
sudo apt-get update -y
sudo apt-get upgrade -y

# Install prerequisites
sudo apt-get install python3 -y
sudo apt-get install python-pip -y
python -m pip install --upgrade pip setuptools wheel
sudo python -m pip install pipenv # MUST BE SUDO, otherwise the command will not be recognized by bash

# Make sure all packages previously downloaded are up to date
sudo apt-get update -y
sudo apt-get upgrade -y

# Install docker-compose
pipenv install docker-compose --skip-lock

# Install git
sudo apt-get install git

# Install TSD Repo
git clone https://github.com/TheSpaghettiDetective/TheSpaghettiDetective.git