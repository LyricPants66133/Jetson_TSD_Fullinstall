import requests

dockerComposeMain = requests.get('https://raw.githubusercontent.com/LyricPants66133/Jetson_TSD_fullinstall/main-docker-compose.yml')
f = open('docker-compose.yml', "w")
f.write(dockerComposeMain.text)
f.close

dockerComposeWeb = requests.get('https://raw.githubusercontent.com/LyricPants66133/Jetson_TSD_fullinstall/web-docker-compose.override.yml')
f = open('web/docker-compose.override.yml', "w")
f.write(dockerComposeWeb.text)
f.close

dockerComposeMl_api = requests.get('https://raw.githubusercontent.com/LyricPants66133/Jetson_TSD_fullinstall/ml_api-docker-compose.override.yml')
f = open('ml_api/docker-compose.override.yml', "w")
f.write(dockerComposeMl_api.text)
f.close