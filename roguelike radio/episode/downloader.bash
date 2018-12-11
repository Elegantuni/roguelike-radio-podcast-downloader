#!/bin/bash

if [ $# -eq 2 ] && [ $1 = "--all" ];
then
	urlnumber=1
	urlnumber2=$2

	while [ $urlnumber -le $urlnumber2 ]
	do
        	mkdir $urlnumber
        	cd $urlnumber
        	wget "http://www.gamesofgrey.com/roguelikeradio/roguelikeradio`echo $urlnumber`.mp3"
        	cd ..
        	let urlnumber=$urlnumber+1
        	sleep 5
	done

        mkdir 6b_interview_Ido_Yehieli
        cd 6b_interview_Ido_Yehieli
        wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-ido.mp3
        cd ..
	sleep 5
        mkdir 7b_spoilers_bonus_content_100_Rogues
        cd 7b_spoilers_bonus_content_100_Rogues
        wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio7-bonus.mp3
        cd ..
	sleep 5
        mkdir 8b_interview_Brian_Walker_aka_Pender
        cd 8b_interview_Brian_Walker_aka_Pender
        wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-pender.mp3
        cd ..
	sleep 5
        mkdir 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
        cd 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
        wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-gaslamp.mp3
        cd ..
	sleep 5
        mkdir 40b_special_on_the_ADOM_IndieGoGo_Campaign
        cd 40b_special_on_the_ADOM_IndieGoGo_Campaign
        wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio40b-adom-special.mp3
        cd ..
	sleep 5
        mkdir 110b_bonus_content_The_Red_Rooster_At_Dawn
        cd 110b_bonus_content_The_Red_Rooster_At_Dawn
        wget http://gamesofgrey.com/roguelikeradio/red-rooster-at-dawn.mp3
	cd ..
	sleep 5

	exit 0
fi

if [ $# -eq 1 ] && [ $1 = "--extra" ];
then
	mkdir 6b_interview_Ido_Yehieli
	cd 6b_interview_Ido_Yehieli
	wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-ido.mp3
	cd ..
	sleep 5
	mkdir 7b_spoilers_bonus_content_100_Rogues
	cd 7b_spoilers_bonus_content_100_Rogues
	wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio7-bonus.mp3
	cd ..
	sleep 5
	mkdir 8b_interview_Brian_Walker_aka_Pender
	cd 8b_interview_Brian_Walker_aka_Pender
	wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-pender.mp3
	cd ..
	sleep 5
	mkdir 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
	cd 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
	wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-gaslamp.mp3
	cd ..
	sleep 5
	mkdir 40b_special_on_the_ADOM_IndieGoGo_Campaign
	cd 40b_special_on_the_ADOM_IndieGoGo_Campaign
	wget http://www.gamesofgrey.com/roguelikeradio/roguelikeradio40b-adom-special.mp3
	cd ..
	sleep 5
	mkdir 110b_bonus_content_The_Red_Rooster_At_Dawn
	cd 110b_bonus_content_The_Red_Rooster_At_Dawn
	wget http://gamesofgrey.com/roguelikeradio/red-rooster-at-dawn.mp3
	cd ..
	sleep 5

	exit 0
fi

if [ $# -ne 2 ];
then
	echo "downloader.bash <start number> <finish number>"
	echo "downloader.bash --all <finish number>"
	echo "downloader.bash --extra"

	exit 1
fi

urlnumber=$1
urlnumber2=$2

while [ $urlnumber -le $urlnumber2 ]
do
	mkdir $urlnumber
	cd $urlnumber
	wget "http://www.gamesofgrey.com/roguelikeradio/roguelikeradio`echo $urlnumber`.mp3"
	cd ..
	let urlnumber=$urlnumber+1
	sleep 5
done

exit 0

