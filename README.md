# RecordAPI

This project is created in terms of interviewing process at Dateio. The REST API service helps user to record the log when client sees the offer. Service uses L1 and L2 caching layers.

Technologies: Java 17, Spring Boot, Hibernate Ehcache, PostgreSQL JPA, Maven, Docker

## Performance:

GET + POST reuests (10 threads, 2x100 requests):
<img width="1966" alt="GET + POST Summary Report (10 threads 2x100 requests)" src="https://user-images.githubusercontent.com/90135638/230092616-e678893a-ba00-4e85-ae07-9dc308eb8f88.png">

POST request (10 threads, 100 requests):
<img width="1966" alt="POST Summary Report (10 threads 2x100 requests)" src="https://user-images.githubusercontent.com/90135638/230092476-05d2e689-26f8-4167-a31c-b12bbd8819cf.png">


GET request (10 threads, 100 requests):
![GET Summary Report (10 threads 2x100 requests)](https://user-images.githubusercontent.com/90135638/230092388-7305a8d7-6790-46ce-9677-59da010ad671.png)


## Launch:

Interaction with the service is implemented via API calls. 
Postman API collection can be found in INFO directory (Record REST API.postman_collection) file. 

Program needs PostgreSQL database to be set up:

Database is dockerized, run compose command in INFO/db-docker folder, this will configure DB container with some sample data:

`docker compose up`

Alternatively you can run .sql script located in INFO/db-docker/init folder and configure DB on your local server. 
Connectivity setting can be adjusted application.properties file (localhost:5438 and admin account used by default).

## Project status
Improving stage
