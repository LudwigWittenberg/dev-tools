# Creates a directory if it does not already exist. 
function mkdir {
    param([string]$name)

    if (-not (Test-Path $name)) {
        New-Item -Path $name -ItemType Directory | Out-Null
    }
}