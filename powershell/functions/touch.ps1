# Creates a file if it does not already exist, or updates the last write time if it does.
function touch {
    param([string]$name)

    if (-not (Test-Path $name)) {
        New-Item -Path $name -ItemType File | Out-Null
    }
}