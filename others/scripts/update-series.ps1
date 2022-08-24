$numbers = New-Object -TypeName "System.Collections.Generic.HashSet[string]";
for ($i = 1; $i -lt 8; $i++) {
    $numbers.Clear();
    if ($i -eq 1) {
        $file = "";
    } else {
        $file = "-$i";
    }
    foreach ($line in (Get-Content ('{0}../series/scp-series{1}.ftml' -f $args[0], $file))) {
        if ($line.StartsWith("* [[[SCP-") -and $line.EndsWith("]]] - [アクセス拒否]")) {
            $line = $line.SubString(9, $line.Length - 23);
            [Void]$numbers.Add($line);
        }
    }
    foreach ($line in (Get-Content ('{0}../series/en/scp-series{1}.ftml' -f $args[0], $file))) {
        if (-not $line.StartsWith("* [[[SCP-") -or $line.EndsWith("]]] - [ACCESS DENIED]")) { continue; }
        $line = $line.SubString(9, $line.Length - 9);
        $index = $line.IndexOf("]]] - ");
        if ($index -eq -1) { continue; }
        $number = $line.SubString(0, $index);
        if ($numbers.Contains($number)) {
            '{0} : {1}' -f $number, $line.SubString($index + 6, $line.Length - $index - 6);
        }
    }
}
