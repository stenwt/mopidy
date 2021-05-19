from debian:buster
run apt update
run apt install wget gpg -y
run wget -q -O - https://apt.mopidy.com/mopidy.gpg | apt-key add -
run wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/buster.list
run apt update
run apt install mopidy* python3-pip -y 
run pip3 install Mopidy-Jellyfin Mopidy-Iris Mopidy-Muse
run apt clean
user mopidy
cmd mopidy
