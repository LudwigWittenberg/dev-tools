# Kills the process(es) using the specified port.
function killport {
    param([int]$port)

    $connections = Get-NetTCPConnection -LocalPort $port -ErrorAction SilentlyContinue

    if (-not $connections) {
        Write-Host "No process found on port $port"
        return
    }

    $pids = $connections | Select-Object -ExpandProperty OwningProcess -Unique

    foreach ($p in $pids) {
        try {
            Stop-Process -Id $p -Force -ErrorAction Stop
            Write-Host "Killed PID $p on port $port"
        } catch {
            Write-Host "Failed to kill PID $p"
        }
    }
}