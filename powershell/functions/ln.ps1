# Creates a symbolic link from $link to $target.
function ln {
    param(
        [string]$target,
        [string]$link
    )

    if (-not (Test-Path $target)) {
        Write-Host "Target does not exist: $target"

        return
    }

    if (Test-Path $link) {
        Write-Host "Link already exists: $link"
        return
    }

    New-Item -ItemType SymbolicLink -Path $link -Target $target | Out-Null
    Write-Host "Created symlink: $link -> $target"
}