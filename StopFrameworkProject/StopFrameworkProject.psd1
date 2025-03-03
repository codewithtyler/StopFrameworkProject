@{
    ModuleVersion = '1.0'
    Guid = '{50FB63F8-AC99-4EE5-9A02-032E7CFB68F7}'
    Author = 'Tyler Hughes'
    CompanyName = 'Eagle Sight Labs, LLC'
    Copyright = '(c) 2025 Eagle Sight Labs, LLC. All rights reserved.'
    Description = 'Module for stopping framework projects'
    RootModule = 'StopFrameworkProject.psm1'
    FunctionsToExport = @('Stop-AngularProject', 'Stop-NextProject', 'Stop-ReactProject')
}