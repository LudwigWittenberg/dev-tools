# Dev Tools (Windows)

This repository contains PowerShell functions for common development tasks on Windows.

## Functions

- `mkdir`: Creates a directory if it does not already exist.
- `ln`: Creates a symbolic link from $link to $target.
- `touch`: Creates a file if it does not already exist, or updates the last write time if it does.
- `rm`: Removes a file.
- `rmdir`: Removes a directory.
- `mv`: Moves a file or directory.
- `killport`: Kills a process listening on a port.

## Installation

1. Clone the repository:

```powershell
git clone https://github.com/LudwigWittenberg/dev-tools.git
```

1. Locate the PowerShell profile:

```powershell
cd C:\Users\<yourusername>\Documents\PowerShell\<your-profile-name>.ps1
```

1. Add the functions to the profile:

```powershell
. "$HOME\Documents\dev-tools\PowerShell\functions\killport.ps1"
. "$HOME\Documents\dev-tools\PowerShell\functions\mkdir.ps1"
. "$HOME\Documents\dev-tools\PowerShell\functions\mv.ps1"
. "$HOME\Documents\dev-tools\PowerShell\functions\rm.ps1"
. "$HOME\Documents\dev-tools\PowerShell\functions\rmdir.ps1"
. "$HOME\Documents\dev-tools\PowerShell\functions\ln.ps1"
. "$HOME\Documents\dev-tools\PowerShell\functions\touch.ps1"
. "$HOME\Documents\dev-tools\PowerShell\functions\cp.ps1"
```

1. Restart PowerShell:

## Usage

### killport

Kills the process(es) using the specified port.

```powershell
killport 8080
```

### mkdir

Creates a directory if it does not already exist.

```powershell
mkdir "hello-world"
```

### rmdir

Removes a directory.

```powershell
rmdir "hello-world"
```

### mv

Moves a file or directory.

```powershell
mv "hello-world" "hello-world-2"
```

### ln

Creates a symbolic link from $link to $target.

```powershell
ln "hello-world.txt" "hello-world-2.txt"
```

### touch

Creates a file.

```powershell
touch "hello-world.txt"
```

### rm

Removes a file.

```powershell
rm "hello-world.txt"
```

### cp

Copies a file from $source to $destination.

```powershell
cp "hello-world.txt" "./hello-world/hello-world.txt"
```