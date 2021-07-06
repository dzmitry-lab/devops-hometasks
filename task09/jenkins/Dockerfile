# dockerfile
FROM debian:buster

RUN apt-get -y update && apt-get install -y ansible
ADD share /tmp/share
RUN ansible-playbook /tmp/share/jenkins.yml
ENTRYPOINT service jenkins start && bash