#!/bin/bash

urlnumber=$1
urlnumber2=$2

if [ $# -ne 2 ];
then
	echo "downloader.bash <start number> <finish number>"

	exit 1
fi

while [ $urlnumber -le $urlnumber2 ]
do
	mkdir $urlnumber
	cd $urlnumber
	wget "http://www.gamesofgrey.com/roguelikeradio/roguelikeradio`echo $urlnumber`.mp3"
	cd ..
	let urlnumber=$urlnumber+1
	sleep 5
done
