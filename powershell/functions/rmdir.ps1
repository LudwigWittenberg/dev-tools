function rmdir {
    param(
        [string]$path,
        [switch]$Recurse,
        [switch]$Force
    )

    if (-not (Test-Path -LiteralPath $path)) {
        Write-Host "Path does not exist: $path"
        return
    }

    $item = Get-Item -LiteralPath $path
    if (-not $item.PSIsContainer) {
        Write-Host "Path is not a directory: $path"
        return
    }

    try {
        Remove-Item -LiteralPath $path -Recurse:$Recurse -Force:$Force
    } catch {
        Write-Host "Failed to remove directory: $path"
    }
}
