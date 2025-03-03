function Stop-Project {
    param (
        [int]$Port = 4200
    )
    try {
        # Get the TCP connection information
        $tcpConnections = Get-NetTCPConnection -LocalPort $Port -ErrorAction SilentlyContinue
            
        if ($tcpConnections) {
            foreach ($connection in $tcpConnections) {
                $owningProcessId = $connection.OwningProcess
                     
                if ($owningProcessId) {
                    $process = Get-Process -Id $owningProcessId -ErrorAction SilentlyContinue
                        
                    if ($process) {
                        Stop-Process -Id $owningProcessId -Force
                        Write-Output "Process on port $Port with PID $owningProcessId has been stopped."
                    } else {
                        Write-Output "No process found for PID $owningProcessId."
                    }
                } else {
                    Write-Output "No owning process found for port $Port."
                }
            }
        } else {
            Write-Output "No TCP connections found on port $Port."
        }
    } catch {
        Write-Output "Failed to stop the process. Please ensure you have the necessary permissions."
    }
}