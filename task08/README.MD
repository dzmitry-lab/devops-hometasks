1st part

Build image with command:
sudo docker build -t hometask-image .

run dynamic.sh - check if site (php) is available on localhost:8080

run static.sh - check if site (html) is available on localhost:8081





2nd part


sudo docker build -t wcg -f Dockerfile.multi .

sudo docker run --rm -it -p 80:8888 wcg

Check site on localhost:80
