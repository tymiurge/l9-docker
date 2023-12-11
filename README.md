# Task

- Створіть Dockerfile, в якому налаштовані web-server (tomcat/apache2/nginx), необхідний порт та простий index.html (aka Hello World) файл в якості статичної сторінки. Створіть другий Dockerfile з іншим web-додатком на ваш вибір. 
- Створіть файл docker-compose.yml, в якому ви описуєте два сервіси та налаштуйте мережу між ними.


Результати вашої роботи (Dockerfiles, docker-compose.yml) додайте у Git-репозиторій з описом в README.md, та у lms додайте лінк на репозиторій.

# Results

## git url

## description

without the applications (**be** and **fe**) so far - don't want to put them into a public repository yet

there are 3 dockerfiles:
- fe-dockerfile
- be-dockerfile
- pg-dockerfile

to launch the stack the following commands should be executed:

```bash
docker build -t my-be-image -f be-dockerfile .
docker build -t my-fe-image -f fe-dockerfile .
docker build -t my-pg-image -f pg-dockerfile .

docker network create mynetwork

docker run --network=mynetwork --name be-container -d my-be-image
docker run --network=mynetwork --name fe-container -d my-fe-image
docker run --network=mynetwork --name pg-container -d my-pg-image
```

or, with the docker-compose:

```bash
docker-compose up
```