function mv {
    param(
        [string]$source,
        [string]$destination,
        [switch]$Force
    )

    if (-not (Test-Path -LiteralPath $source)) {
        Write-Host "Source does not exist: $source"
        return
    }

    if ([string]::IsNullOrWhiteSpace($destination)) {
        Write-Host "Destination is required"
        return
    }

    try {
        if (Test-Path -LiteralPath $destination -PathType Container) {
            Move-Item -LiteralPath $source -Destination $destination -Force:$Force
            return
        }

        if (Test-Path -LiteralPath $destination -PathType Any -and -not $Force) {
            Write-Host "Destination already exists. Use -Force to overwrite: $destination"
            return
        }

        Move-Item -LiteralPath $source -Destination $destination -Force:$Force
    } catch {
        Write-Host "Failed to move item: $source"
    }
}
