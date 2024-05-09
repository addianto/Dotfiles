# WinGet Configuration

This directory has a WinGet Configuration file used to set up software packages on a Windows machine.

## Required DSC Modules

Install the following DSC modules before running the WinGet Configuration files:

- [`Microsoft.Windows.Developer`](https://www.powershellgallery.com/packages/Microsoft.Windows.Developer/0.2.1-alpha)
- [`Microsoft.WinGet.DSC`](https://www.powershellgallery.com/packages/Microsoft.WinGet.DSC/1.8.1133-alpha)
- [`xPSDesiredStateConfiguration`](https://www.powershellgallery.com/packages/xPSDesiredStateConfiguration/9.2.0-preview0008)

To install the modules:

```pwsh
Install-Module -Name Microsoft.Windows.Developer -AllowPrerelease
Install-Module -Name Microsoft.WinGet.DSC -AllowPrerelease
Install-Module -Name xPSDesiredStateConfiguration -AllowPrerelease
```

## How to Use

To use, execute the following commands:

```pwsh
winget configure --file .\configurations\configuration.dsc.yaml
winget configure --file .\configurations\installPowerToys.dsc.yaml
```

### Install WSL

Enable the WSL optional feature by running the following command as an admin/elevated user:

```pwsh
winget configure --file .\configurations\enableWSL.dsc.yaml
```

Then, install WSL distros as normal user:

```pwsh
winget configure --file .\configurations\installWSLDistros.dsc.yaml
```

## References

- [`microsoft/devhome`](https://github.com/microsoft/devhome/tree/main/docs/sampleConfigurations)
  and [`oliverlabs/winget-dsc-examples`](https://github.com/oliverlabs/winget-dsc-examples)
  contain some WinGet DSC examples
