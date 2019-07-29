# macaddress-vendor
Requirements:
  1. Docker version minimum - 17.12
  2. Registration https://macaddress.io/signup
  3. Get MAC address of your device

After installation of Docker, please copy files from https://github.com/tgolowan/macaddress-vendor to your local folder
In downloaded files make file input.sh executable with command chmod +x
Use this command to and prepare you API key from https://macaddress.io/signup and MAC address, ./input.sh
This bash script will buil docker image from Dockerfile and run it and will send API request to get Vendor name by MAC address of your device 
