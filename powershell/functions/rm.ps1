function rm {
    param(
        [string]$path,
        [switch]$Force
    )

    if (-not (Test-Path -LiteralPath $path)) {
        Write-Host "Path does not exist: $path"
        return
    }

    $item = Get-Item -LiteralPath $path
    if ($item.PSIsContainer) {
        Write-Host "Path is a directory. Use rmdir: $path"
        return
    }

    try {
        Remove-Item -LiteralPath $path -Force:$Force
    } catch {
        Write-Host "Failed to remove file: $path"
    }
}
