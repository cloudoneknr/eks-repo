FROM ubuntu:22.04
RUN apt update -y
RUN apt-get update -y
RUN apt-get install curl unzip less -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && ./aws/install