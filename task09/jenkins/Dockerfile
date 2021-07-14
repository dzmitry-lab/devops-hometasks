# dockerfile
FROM debian:buster

RUN apt-get -y update && apt-get install -y ansible
ADD share /tmp/share
RUN ansible-playbook /tmp/share/jenkins.yml
CMD /usr/bin/daemon -f --name=jenkins --inherit --env=JENKINS_HOME=/var/lib/jenkins --output=/var/log/jenkins/jenkins.log --pidfile=/var/run/jenkins/jenkins.pid -- /usr/bin/java -Djenkins.install.runSetupWizard=false -Dhudson.security.csrf.DefaultCrumbIssuer.EXCLUDE_SESSION_ID=true -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080 