#!/usr/bin/env bash

numargs=$#

if [ $numargs -eq 0 ];
then
	start=1
	finish=-1
	position=00:00:00
fi

if [ $numargs -eq 2 ];
then
	start=$1
	finish=$2
	position=00:00:00
fi

if [ $numargs -eq 3 ];
then
	start=$1
	finish=$2
	position=$3
fi

if [ $numargs -ne 0 ];
then
	if [ $numargs -lt 2 ] || [ $numargs -gt 3 ];
	then
		echo "player.bash <start number> <finish number (-1 	for infinite)>"

	exit 1
	fi
fi

if [ $finish -eq -1 ];
then
	cd $start
	mpv roguelikeradio`echo $start`.mp3 --start=$position
	determinetocontinue=$?
	if [ $determinetocontinue -ne 0 ];
	then
		exit 1
	fi
	let start=$start+1
	cd ..

	while [ $determinetocontinue -eq 0 ]
	do
		cd $start
		mpv roguelikeradio`echo $start`.mp3
		determinetocontinue=$?
		if [ $determinetocontinue -ne 0 ];
		then
			exit 1
		fi
		let start=$start+1
		cd ..
	done

	exit 0
fi

if [ $finish -ne -1 ];
then
	cd $start
	mpv roguelikeradio`echo $start`.mp3 --start=$position
	cd ..
	let start=$start+1

	while [ $start -le $finish ]
	do
		cd $start
		mpv roguelikeradio`echo $start`.mp3
		cd ..
		let start=$start+1
	done
fi

