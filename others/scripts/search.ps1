$files = New-Object System.Collections.Generic.HashSet[string];
$searchText = $args[0];
foreach ($file in Get-ChildItem *.ftml -Recurse)
{
    if ([System.IO.File]::ReadAllText($file, [System.Text.Encoding]::UTF8).Contains($searchText))
    {
        [Void]$files.Add($file.Name);
    }
}

Return $files;