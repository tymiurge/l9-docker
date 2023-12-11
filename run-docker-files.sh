docker build -t my-be-image -f be-dockerfile .
docker build -t my-fe-image -f fe-dockerfile .
docker build -t my-pg-image -f pg-dockerfile .

docker network create mynetwork

docker run --network=mynetwork --name be-container -d my-be-image
docker run --network=mynetwork --name fe-container -d my-fe-image
docker run --network=mynetwork --name pg-container -d my-pg-image