$metadataFolder = $args[0];
[int]$number = $args[1];
[int]$series = $number / 1000;
if ($series -eq 0)
{
    $targetFile = $metadataFolder + 'scp-series.ftml';
}
else
{
    $series = $series + 1;
    $targetFile = "${metadataFolder}scp-series-${series}.ftml";
}

$match = '* [[[SCP-' + $number;

foreach ($line in (Get-Content $targetFile))
{
    if (-not $line.StartsWith($match))
    {
        continue;
    }

    $index = $line.IndexOf(']]] - ');
    if ($index -eq -1)
    {
        continue;
    }

    $line.SubString($index + 6, $line.Length - $index - 6);
    return;
}