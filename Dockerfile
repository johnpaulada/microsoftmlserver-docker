FROM ubuntu
RUN apt-get update
RUN apt-get install apt-transport-https wget -y
RUN mkdir -p /home/prod
RUN cd /home/prod
RUN wget http://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install aptitude -y
RUN aptitude install microsoft-mlserver-all-9.2.1 -y
RUN ls -la /etc/apt/sources.list.d/
RUN bash /opt/microsoft/mlserver/9.2.1/bin/R/activate.sh