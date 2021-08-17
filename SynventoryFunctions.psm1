Get-Content "settings.ini" | foreach-object -begin {$SynSetting=@{}} -process { $k = [regex]::split($_,'='); if(($k[0].CompareTo("") -ne 0) -and ($k[0].StartsWith("[") -ne $True)) { $SynSetting.Add($k[0], $k[1]) } }

