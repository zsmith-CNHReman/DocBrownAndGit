# Deletes any line that contains a comment starting with '#DEBUG'

Get-ChildItem -Path . -Recurse -Include *.ps1,*.psm1,*.txt | ForEach-Object {
    $path = $_.FullName
    Write-Host "Processing: $path"

    $content = Get-Content $path
    $cleanedContent = $content | Where-Object { $_ -notmatch '#DEBUG' }

    Set-Content -Path $path -Value $cleanedContent
}

