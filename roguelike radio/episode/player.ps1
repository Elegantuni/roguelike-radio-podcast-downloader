If ($($args.Count) -eq 0)
{
	$start=1
	$finish=-1
	$position="00:00:00"
}

If ($($args.Count) -eq 2)
{
	$start=$args[0]
	$finish=$args[1]
	$position="00:00:00"
}

If ($($args.Count) -eq 3)
{
	$start=$args[0]
	$finish=$args[1]
	$position=$args[2]
}

If ($($args.Count) -ne 0)
{
	If (($($args.Count) -lt 2) -or ($($args.Count) -gt 3))
	{
		echo "player.ps1 <start number> <finish number (-1 for infinite)>"

		return
	}
}

If ($finish -eq -1)
{
	cd $start
	mpv roguelikeradio$start.mp3 --start=$position
	$determinetocontinue=$LastExitCode
	If ($determinetocontinue -ne 0)
	{
		return
	}
	$start++
	cd ..

	While ($determinetocontinue -eq 0)
	{
		cd $start
		mpv roguelikeradio$start.mp3
		$determinetocontinue=$LastExitCode
		If ($determinetocontinue -ne 0)
		{
			return 
		}
		$start++
		cd ..
	}

	return 
}

If ($finish -ne -1)
{
	cd $start
	mpv roguelikeradio$start.mp3 --start=$position
	cd ..
	$start++

	While ($start -le $finish)
	{
		cd $start
		mpv roguelikeradio$start.mp3
		cd ..
		$start++
	}
}
