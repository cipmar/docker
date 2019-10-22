# create mysql image
docker build -t my-mysql .

# stop, remove previous container
docker stop my-mysql
docker rm my-mysql

# start a fresh mysql container
docker run --detach --name my-mysql --env="MYSQL_ROOT_PASSWORD=password" -p 3306:3306 my-mysql

docker logs my-mysql