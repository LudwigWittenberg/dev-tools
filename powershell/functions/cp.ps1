# Copies a file from $source to $destination.
function cp {
    param(
        [string]$source,
        [string]$destination
    )

    if (-not (Test-Path $source)) {
        Write-Host "Source does not exist: $source"
        return
    }

    if (Test-Path $destination) {
        Write-Host "Destination already exists: $destination"
        return
    }

    Copy-Item -LiteralPath $source -Destination $destination
    Write-Host "Copied file: $source -> $destination"
}