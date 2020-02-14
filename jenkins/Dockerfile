FROM jenkins/jenkins:lts-alpine

USER root

RUN apk update && \
        apk add docker openrc --no-cache && \
        rc-update add docker boot

USER jenkins
# install plugins