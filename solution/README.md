
## The csvserver assignment
### Steps

###### Task1
- Run Script gencsv.sh, which wil generate a file --> inputFile
```
sh gencsv.sh
```
###### Task2
- Run docker command bleow which will run the app inside the container
```
docker run -dit -v `pwd`/inputFile:/csvserver/inputdata -p 9300:9300 infracloudio/csvserver:latest
```
> In the above command, we've attached a volume with inputFile generated from script and with nodePort and ContainerPort and runs in background. Can access the application using http://localhost:9300

###### Task3
- Run as docker-compose file
```
docker-compose -f docker-compose-csvserver.yaml up -d
```
> Remove the docker containers if there are any running, 
Above command runs docker-compose ( inividual Service) in background, Once it's successfull, we can check using "docker ps" command for the container status and using this URL http://localhost:9300

###### Task4
- Run new docker-compose file with prometheus as addon

```
docker-compose -f docker-compose-promotheus.yaml up -d
```
> Above command will create two services csvserver app and Prometheus.
Using http://localhost:9300 --> Can access csvserver app
Using http://localhost:9090 --> Can access Prometheus app

> Type csvserver_records in the query box of Prometheus. Click on Execute and then switch to the Graph tab, You will be able to see the one line graph with 10 as sequence