FROM jenkins/jenkins:lts

# Установка Docker внутри контейнера Jenkins
USER root
RUN apt-get update && apt-get install -y docker.io

# Настройка прав для запуска docker из Jenkins
RUN usermod -aG docker jenkins

USER jenkins
