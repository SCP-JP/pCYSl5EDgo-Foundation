$files = New-Object System.Collections.Generic.HashSet[string];
$searchText = $args[2];
foreach($file in Get-ChildItem -Path $args[1] *.ftml -Recurse)
{
    if (![System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8).Contains($searchText))
    {
        continue;
    }

    $targetFiles = Get-ChildItem -Path $args[0] $file.Name -Recurse;
    if ($targetFiles.Length -lt 1)
    {
        continue;
    }

    if (![System.IO.File]::ReadAllText($targetFiles[0], [System.Text.Encoding]::UTF8).Contains($searchText))
    {
        [Void]$files.Add($file.Name);
    }
}

$files;
