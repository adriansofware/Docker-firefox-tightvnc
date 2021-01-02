# Firefox over VNC
#
# VERSION               0.3
FROM ubuntu:18.04
#Install packages
RUN apt update -y && apt install -y  tightvncserver xvfb procps firefox net-tools  xfce4-session autocutsel openssh-server
#Set needed vnc folders and files
RUN mkdir ~/.vnc
COPY config/xstartup /root/.vnc/xstartup
COPY config/xsession /root/.xsession
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
#Copy start script
COPY config/start.sh /start.sh
EXPOSE 5910
EXPOSE 22
ENTRYPOINT  /start.sh $VNCPASS
