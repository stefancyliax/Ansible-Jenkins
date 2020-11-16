# FROM jenkins/jenkins:lts
FROM jenkins/jenkins:lts-alpine


USER root


# install needed repos
# RUN apt-get update && apt-get install -y ansible iputils-ping netcat sshpass
RUN apk add ansible sshpass


# disable strict check of target identity. Use with care in production!
# RUN echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
# RUN echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config


# activate user jenkins
USER jenkins
