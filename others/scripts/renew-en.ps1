./SCP.exe search tag JP en -o ./en/list.txt;
$x = New-Object -TypeName 'System.Collections.Generic.SortedSet[string]';
foreach ($line in Get-Content ./en/list.txt) {
    if ($line.Contains('old:')) { continue; }
    [Void]$x.Add($line);
}
$x > ./en/list.txt;
git add ./en/list.txt;
git commit -m 'Renew EN Automated';
$filePath = $args[0];
git diff HEAD~ HEAD --output $filePath;
$x.Clear();
foreach ($line in Get-Content $filePath){
if ($line.Length -lt 2) {continue;}
if ($line[0] -eq '+'){ 
 if ($line[1] -eq '+') {continue;}
 $line = $line.SubString(1, $line.Length - 1);
 [Void]$x.Add($line);
}
if ($line[0] -eq '-'){ 
 if ($line[1] -eq '-') {continue;}
 $line = $line.SubString(1, $line.Length - 1).Replace(':', '_');
 Remove-Item "./en/${line}.ftml";
 Remove-Item "./en-o/${line}.ftml";
}
}
$x > $filePath;
./SCP.exe page multi-download JP "../${filePath}" -w ./en > "./${filePath}.jp"
./SCP.exe page multi-download EN "../${filePath}" -w ./en-o > "./${filePath}.en"