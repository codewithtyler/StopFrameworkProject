# StopProject

This repository contains two PowerShell modules: StopFrameworkProject and StopProject. Each module has its own folder, which includes the necessary files to run the project.

## Installation
To install the modules, follow these steps:

1. Clone this repository
2. Place the cloned folders in a location that's accessible to PowerShell (e.g., C:\Users\username\PowerShell\Modules)
3. Update your profile script ($Profile) to import the modules using Import-Module StopFrameworkProject

By following these steps, you can easily install and use these modules I've created.

Examples:

Command:
```powershell
Stop-Project
```

Output:
```bash
No TCP connections found on port 4200.
```

Command:
```powershell
Stop-AngularProject
```

Output:
```bash
No TCP connections found on port 4200.
```

Command:
```powershell
Stop-NextProject
```

Output:
```bash
No TCP connections found on port 300.
```

Command:
```powershell
Stop-ReactProject
```

Output:
```bash
No TCP connections found on port 5173.
```

Command:
```powershell
Stop-Project -Port 3001
```

Output:
```bash
No TCP connections found on port 3001.
```
