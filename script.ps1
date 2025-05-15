
Get-ChildItem -Path . -Recurse -Include *.ps1,*.psm1,*.txt | ForEach-Object {
    $path = $_.FullName
    Write-Host "Processing: $path"

    $content = Get-Content $path

    Set-Content -Path $path -Value $cleanedContent
}

