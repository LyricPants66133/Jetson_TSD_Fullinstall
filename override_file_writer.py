f = open('TheSpaghettiDetective/docker-compose.override.yml', "w+")
f.write("""
version: '2.4'

services:
  ml_api:
    build:
      context: ml_api
    environment:
        HAS_GPU: 'True'
    runtime: nvidia
""")
f.close

f = open('TheSpaghettiDetective/web/docker-compose.override.yml', "w+")
f.write("FROM raymondh2/web:aarch64")
f.close

f = open('TheSpaghettiDetective/ml_api/docker-compose.override.yml', "w+")
f.write("FROM raymondh2/ml_api:jetson")
f.close