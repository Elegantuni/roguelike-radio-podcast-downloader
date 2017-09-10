$urlnumber = $args[0]
$urlnumber2 = $args[1]

If ($($args.Count) -ne 2)
{
	echo "downloader.ps1 <start number> <finish number>"
	
	return
}

While ($urlnumber -le $urlnumber2)
{
	mkdir $urlnumber
	cd $urlnumber
	wget.exe "http://www.gamesofgrey.com/roguelikeradio/roguelikeradio$urlnumber.mp3"
	cd ..
	$urlnumber++
	Start-Sleep 5
}
