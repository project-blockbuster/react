FROM centos:latest
RUN mkdir /app
COPY . /app
RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -
RUN yum install -y nodejs
WORKDIR /app/react-docker-app
CMD ["npm","start"] 
