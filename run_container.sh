docker stop firefox_c && docker rm firefox_c
docker run -it -e VNCPASS='' -p 2020:22 -p 5910:5910 --name firefox_c  firefox_i 
