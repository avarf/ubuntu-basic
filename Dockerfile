FROM ubuntu:18.04

# A basic image for debuging K8s
RUN apt-get update  --fix-missing

RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get install -y curl
# for installing nslookup and dig
RUN apt-get update && apt-get install -y dnsutils
RUN apt-get update && apt-get install -y traceroute
RUN apt-get update && apt-get install -y telnet
# for installing netstat
RUN apt-get update && apt-get install -y net-tools
RUN apt-get update && apt-get install -y nano
RUN apt-get update && apt-get install -y nmap
RUN apt-get update && apt-get install -y iputils-ping

# installing plumber for connecting to different messaging systems including RMQ and Kafak
RUN curl -o plumber https://github.com/batchcorp/plumber/releases/latest/download/plumber-darwin
RUN chmod +x plumber
RUN mv plumber /usr/local/bin/plumber

CMD ['/bin/bash /bin/cat']
