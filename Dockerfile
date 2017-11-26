### Set the base image
FROM jboss/base-jdk:8

### File Author / Maintainer
MAINTAINER "Carlos viveros" "carlos.viveros@snoopconsulting.com"

### Install EAP 7.0.0
ADD build/jboss-eap-7.0.0.zip /tmp/
RUN unzip /tmp/jboss-eap-7.0.0.zip

### Set Environment
ENV JBOSS_HOME /opt/jboss/jboss-eap-7.0

### Create EAP User
RUN $JBOSS_HOME/bin/add-user.sh admin Password1! --silent

EXPOSE 8080 9990

CMD ["/opt/jboss/jboss-eap-7.0/bin/standalone.sh", "-b", "0.0.0.0","-bmanagement","0.0.0.0"]
