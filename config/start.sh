VNCPASS=$1
rm -rf /tmp/.*
export USER=root
echo $VNCPASS|vncpasswd -f > /root/.vnc/passwd
chmod 600 /root/.vnc/passwd
echo "${VNCPASS}\n${VNCPASS}"|passwd root
service ssh start
#/usr/bin/Xvfb -ac :10 &
vncserver :10 -geometry 1920x1080 -depth 24
DISPLAY=:10 firefox
#while true; do date;sleep 1m;done
