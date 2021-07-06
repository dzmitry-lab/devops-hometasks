# dockerfile
FROM debian:buster

RUN apt-get -y update && apt-get install -y ansible
ADD share /tmp/share
RUN ansible-galaxy install ansible-thoteam.nexus3-oss && ansible-playbook /tmp/share/nexus.yml
ENTRYPOINT service nexus start && bash