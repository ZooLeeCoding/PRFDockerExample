FROM node

RUN apt-get update
RUN apt-get install -y git telnet
RUN git config --global user.name prfgyak
RUN git config --global user.email prfgyak@example.com
RUN git config --global http.sslVerify false
WORKDIR /opt
RUN git clone https://github.com/ZooLeeCoding/PRFDockerExample.git
WORKDIR /opt/PRFDockerExample
RUN npm install

EXPOSE 3000

CMD nodejs app.js
