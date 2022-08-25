$name = $args[0];
$filename = $name.Replace(':', ' ');
$forumfile = "./others/prepare/${filename}.forum.ftml";
New-Item "./others/prepare/${filename}.ftml";
./SCP.exe page quote EN $name > $forumfile;
Write-Output '**査読協力:** ' >> $forumfile;
./SCP.exe forum download-page EN $name >> $forumfile;
Write-Output "Post('${name}', '', '');" >> ./post.ps1;