# dockerfile
FROM debian:buster

RUN apt-get -y update && apt-get install -y ansible
ADD share /tmp/share
RUN ansible-galaxy install ansible-thoteam.nexus3-oss && ansible-playbook /tmp/share/nexus.yml
RUN chmod +x /tmp/share/start_nexus.sh
CMD /tmp/share/start_nexus.sh