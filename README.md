# roguelike-radio-podcast-downloader

Check http://www.roguelikeradio.com/ for what episodes are currently available.
It only download the numbered roguelike podcast.  This doesn't download the special roguelike podcast.  

For windows you need to get wget from https://eternallybored.org/misc/wget/
If you get the win64 zip version.  Rename it to wget.exe and add it to your path.
You need to also enable powershell script execution.

For linux you need to install wget.

To use if you want to download specific podcast.  Like only the first episode on linux then type ./downloader.bash 1 1  For episode
1 to 139 $ ./downloader.bash 1 139 For only the 139 episode then type $ ./downloader.bash 139 139 <br />
<br />
To download all the episodes including special episode (Ex: 1 to 153 and special episodes) <br />
./downloader.bash --all 153 <br />
<br />
To download only the special episodes <br />
./downloader.bash --extra <br />
<br />
To use player.bash you need mpv. For windows you can get it from https://mpv.srsfckn.biz/ put it in your path.<br />
On linux execute: $ chmod +x ./player.bash <br />
Example to play all the files without entering a stop amount: <br />
Linux <br />
$ ./player.bash 1 -1 <br />
or <br />
Linux <br />
$ ./player.bash <br />
Windows <br >
PS> .\player.ps1 1 -1 <br />
or <br />
PS> .\player.ps1 <br />
<br />
Example to play all the files starting from 50 without entering a stop amount: <br />
Linux <br />
$ ./player.bash 50 -1 <br />
Windows <br />
PS> .\player.ps1 50 -1 <br />
<br />
Example to play all the files without entering a stop amount and start the first at 30 minutes and 10 seconds in to the first: <br />
Linux <br />
$ ./player.bash 1 -1 00:30:10 <br />
Windows <br />
PS> .\player.ps1 1 -1 00:30:10
<br />
Example to play all the files starting from 50 and ending at 70 and start the 50 at 1 hour 30 minutes and 10 seconds: <br />
Linux <br />
$ ./player.bash 50 70 01:30:10 <br />
Windows <br />
PS> .\player.ps1 50 70 01:30:10 <br />
