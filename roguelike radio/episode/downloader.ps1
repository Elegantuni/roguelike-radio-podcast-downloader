If (($($args.Count) -eq 2) -and ($args[0] = "--all"))
{
	$urlnumber = 1
	$urlnumber2 = $args[1]

	While ($urlnumber -le $urlnumber2)
	{
        	mkdir $urlnumber
        	cd $urlnumber
        	wget.exe "http://www.gamesofgrey.com/roguelikeradio/roguelikeradio$urlnumber.mp3"
        	cd ..
        	$urlnumber++
        	Start-Sleep 5
	}
	
	mkdir 6b_interview_Ido_Yehieli
        cd 6b_interview_Ido_Yehieli
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-ido.mp3
        cd ..
        Start-Sleep 5
        mkdir 7b_spoilers_bonus_content_100_Rogues
        cd 7b_spoilers_bonus_content_100_Rogues
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio7-bonus.mp3
        cd ..
        Start-Sleep 5
        mkdir 8b_interview_Brian_Walker_aka_Pender
        cd 8b_interview_Brian_Walker_aka_Pender
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-pender.mp3
        cd ..
        Start-Sleep 5
        mkdir 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
        cd 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-gaslamp.mp3
        cd ..
        Start-Sleep 5
	mkdir 40b_special_on_the_ADOM_IndieGoGo_Campaign
        cd 40b_special_on_the_ADOM_IndieGoGo_Campaign
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio40b-adom-special.mp3
        cd ..
        Start-Sleep 5
        mkdir 110b_bonus_content_The_Red_Rooster_At_Dawn
        cd 110b_bonus_content_The_Red_Rooster_At_Dawn
        wget.exe http://gamesofgrey.com/roguelikeradio/red-rooster-at-dawn.mp3
        cd ..
        Start-Sleep 5

        return


}

If (($($args.Count) -eq 1) -and ($args[0] = "--extra"))
{
	mkdir 6b_interview_Ido_Yehieli
        cd 6b_interview_Ido_Yehieli
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-ido.mp3
        cd ..
        Start-Sleep 5
        mkdir 7b_spoilers_bonus_content_100_Rogues
        cd 7b_spoilers_bonus_content_100_Rogues
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio7-bonus.mp3
        cd ..
        Start-Sleep 5
        mkdir 8b_interview_Brian_Walker_aka_Pender
        cd 8b_interview_Brian_Walker_aka_Pender
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-pender.mp3
        cd ..
        Start-Sleep 5
        mkdir 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
        cd 9b_interview_with_Gaslamp_Games_developers_of_Dungeons_of_Dredmor
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio-gaslamp.mp3
        cd ..
        Start-Sleep 5
        mkdir 40b_special_on_the_ADOM_IndieGoGo_Campaign
        cd 40b_special_on_the_ADOM_IndieGoGo_Campaign
        wget.exe http://www.gamesofgrey.com/roguelikeradio/roguelikeradio40b-adom-special.mp3
        cd ..
        Start-Sleep 5
        mkdir 110b_bonus_content_The_Red_Rooster_At_Dawn
        cd 110b_bonus_content_The_Red_Rooster_At_Dawn
        wget.exe http://gamesofgrey.com/roguelikeradio/red-rooster-at-dawn.mp3
        cd ..
        Start-Sleep 5

        return
}

If ($($args.Count) -ne 2)
{
	echo "downloader.ps1 <start number> <finish number>"
	
	return
}

$urlnumber = $args[0]
$urlnumber2 = $args[1]

While ($urlnumber -le $urlnumber2)
{
	mkdir $urlnumber
	cd $urlnumber
	wget.exe "http://www.gamesofgrey.com/roguelikeradio/roguelikeradio$urlnumber.mp3"
	cd ..
	$urlnumber++
	Start-Sleep 5
}
