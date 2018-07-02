# roguelike-radio-podcast-downloader

Check http://www.roguelikeradio.com/ for what episodes are currently available.
It only download the numbered roguelike podcast.  This doesn't download the special roguelike podcast.  

For windows you need to get wget from https://eternallybored.org/misc/wget/
If you get the win64 version.  Rename it to wget.exe and add it to your path.
You need to also enable powershell script execution.

For linux you need to install wget.

To use if you want to download specific podcast.  Like only the first episode on linux then type ./downloader.bash 1 1  For episode
1 to 139 ./downloader.bash 1 139 For only the 139 episode then type ./downloader.bash 139 139

To use player.bash you need mpv. <br />
chmod +x ./player.bash <br />
Example to play all the files without entering a stop amount: <br />
./player.bash 1 -1 <br />
<br />
Example to play all the files starting from 50 without entering a stop amount: <br />
./player.bash 50 -1 <br />
