Import-Module -Name StopProject

function Stop-AngularProject {
    param (
        [int]$Port = 4200
    )
    Stop-Project -Port $Port
}

function Stop-NextProject {
    param (
        [int]$Port = 3000
    )
    Stop-Project -Port $Port
}

function Stop-ReactProject {
    param (
        [int]$Port = 5173
    )
    Stop-Project -Port $Port
}