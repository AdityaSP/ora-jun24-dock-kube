FROM jenkins/jenkins:lts
USER root
# Docker pre-req
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Install docker
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update  -qq \
    && apt-get install docker-ce=17.09.0~ce-0~debian -y

# add "jenkins" user to "docker"    
RUN usermod -aG docker jenkins