api = input ("Please type yor API key:")
mac = input ("Please share your macaddress:")
import requests
r = requests.get('https://api.macaddress.io/v1?apiKey='+str(api)+'&output=vendor&search='+str(mac)+'')  
print (r.text)
