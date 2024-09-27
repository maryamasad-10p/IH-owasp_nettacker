#!/bin/bash
# This script automates the installation of OWASP Nettacker using Docker and Ubuntu 24.04

# Step 1: Pull Ubuntu 24.04 image from Docker Hub
echo "Pulling Ubuntu 24.04 Docker image..."
docker pull ubuntu:24.04

# Step 2: Run the Docker container
echo "Running the Ubuntu 24.04 container..."
docker run -it ubuntu:24.04 /bin/bash << 'EOF'

# Inside Docker container

# Step 3: Update apt-get and install prerequisite packages
echo "Updating apt-get and installing Python, pip, and venv..."
apt-get update
apt-get install -y python3 python3-pip python3.12-venv git

# Step 4: Set up the virtual environment
echo "Setting up Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Step 5: Clone the OWASP Nettacker repository
echo "Cloning OWASP Nettacker repository..."
git clone https://github.com/OWASP/Nettacker.git

# Optional: If you have a forked repo, clone it
# git clone https://github.com/username/Nettacker.git

# Step 6: Install the necessary dependencies
echo "Installing dependencies from requirements.txt..."
cd Nettacker
python3 -m pip install -r docs/requirements.txt

# Step 7: Install additional packages not included in requirements.txt
echo "Installing additional Python packages..."
python3 -m pip install multiprocess
python3 -m pip install numpy
python3 -m pip install netaddr
python3 -m pip install texttable
python3 -m pip install sqlalchemy
python3 -m pip install aiohttp

echo "OWASP Nettacker setup and additional packages installation completed!"

EOF
