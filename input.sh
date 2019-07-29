#!/bin/bash
echo Please input API key which can be generated https://macaddress.io/signup
read apiname
echo please type macaddress of your device
read varname
echo #/bin/sh >> input.txt
echo "curl -X GET --header 'Accept: application/json' 'https://api.macaddress.io/v1?apiKey=$apiname&output=vendor&search=$varname'" > input.txt
docker build -t apirestimg .
docker run -d  --name rocky --rm -i -t apirestimg bash
docker exec -it -w /home rocky pwd
docker exec -it -w /home rocky chmod +x input.sh
docker exec -it -w /home rocky /bin/bash input.sh >> output.txt
docker cp rocky:home/output.txt output.txt
docker stop rocky
echo -e "\n" >> output.txt
echo $'The vendor is:'
echo $''
tail -10 output.txt




