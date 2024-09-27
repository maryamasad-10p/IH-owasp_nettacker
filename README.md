# IH-owasp_nettacker
Prerequisites
•	Python 3.x: Ensure you have Python 3.x installed on your system.
•	Git: You need Git to clone the OWASP Nettacker repository.


Steps
1.	Make the run script executable:
Copy the file i.e. setup_nettacker_full.sh from main dir and make it executable using following command
•	chmod +x setup_nettacker_full.sh

3.	Run the script:
Run the script using following command
•	./setup_nettacker_full.sh



What the Script Does:
1.	Pull the Ubuntu 24.04 image from Docker Hub.
2.	Start an interactive Ubuntu container.
3.	Install necessary packages such as python3, pip, venv, and git.
4.	Set up a Python virtual environment and activate it.
5.	Clones the OWASP Nettacker repository or a fork if needed.
6.	Installs the dependencies from requirements.txt.
7.	Installs additional Python packages: multiprocess, numpy, netaddr, texttable, aiohttp and sqlalchemy.
This script ensures a smooth installation process by automating both the base dependencies and extra packages required for Nettacker to function properly.
