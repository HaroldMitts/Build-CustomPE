# Build a Custom Windows PE and add Optional Components
Build a new Windows PE (WinPE) and add common Optional Components (OCs) to extend the capabilities of the Windows PE you build.

## WinPE Optional Components included;
> WinPE Optional Components are available when you install the Windows ADK and are located at this path: `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs`

> The following is a complete listing of all functionality you can add to WinPE by adding WinPE OCs;

* WinPE-DismCmdlets
* WinPE-Dot3Svc
* WinPE-EnhancedStorage
* WinPE-FMAPI
* WinPE-Fonts-Legacy
* WinPE-FontSupport-JA-JP
* WinPE-FontSupport-KO-KR
* WinPE-FontSupport-WinRE
* WinPE-FontSupport-ZH-CN
* WinPE-FontSupport-ZH-HK
* WinPE-FontSupport-ZH-TW
* WinPE-GamingPeripherals
* WinPE-HTA
* WinPE-LegacySetup
* WinPE-MDAC
* WinPE-NetFx
* WinPE-PlatformId
* WinPE-PowerShell
* WinPE-PPPoE
* WinPE-RNDIS
* WinPE-Scripting
* WinPE-SecureBootCmdlets
* WinPE-SecureStartup
* WinPE-Setup-Client
* WinPE-Setup-Server
* WinPE-Setup
* WinPE-StorageWMI
* WinPE-WDS-Tools
* WinPE-WinReCfg
* WinPE-WMI

> Note: For each WinPE OC, you also need to install its language components, located in the language subfolder for the language you want to provide support for. For example, Polish language Optional Component support is available from `C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\pl-pl`. 

## Getting Started
Before you can build and customize a WinPE, you need to install the Windows ADK onto your [Technician PC](TechnicianPC-lab.md)
https://github.com/HaroldMitts/wininstall/blob/master/TechnicianPC-lab.md

## Build WinPE
After you have installed the Windows ADK on your Technician PC, launch the Deployment and Imaging Tools Environment (the Command Line Interface (CLI)for the Windows ADK) and run one of the following commands to create a new WinPE;

32-bit WinPE
````
copype x86 c:\WinPE\x86
````

64-bit
````
copype amd64 c:\WinPE\x64
````

The new WinPE will be created and is ready for use. However, it's functionality may not support some of the actions you require. If you need WinPE to support more advanced functionality, you need to add that functionality before it can be supported in WinPE. You do this by adding WinPE Optional Components, or OCs, as shown in the examples below. 

## For more details on building and customizing WinPE, see this Microsoft website:
https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-mount-and-customize

### Extend the capabilities of the WinPE by adding WinPE Optional Components (OCs) using DISM

> In this example, the following list of OCs are added. These are common OCs, but your requirements might mean you need other OCs. The method to add them is the same - Add the core OC, then add the language component.
>
>    * Scripting
>    * WMI
>    * .Net Framework
>    * HTA
>    * PowerShell
>    * DISM Commandlets

Scripting OC and its English language component
````
dism /image:"c:\mount\winpe" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-Scripting_en-us.cab"

dism /image:"c:\mount\winpe" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-Scripting_en-us.cab"
````
WMI OC and its English language component
````
dism /image:"c:\mount\winpe" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-WMI.cab"

dism /image:"c:\mount\winpe" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-WMI_en-us.cab"
````
DotNet Framework and its English language component
````
dism /image:"c:\mount\winpe" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-NetFx.cab"

dism /image:"c:\mount\winpe" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-NetFx_en-us.cab"
````
HTML Application (HTA) support and its English language component
````
dism /image:"c:\Mount\WinPE" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-HTA.cab"

dism /image:"c:\Mount\WinPE" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-HTA_en-us.cab"
````
PowerShell and its English language component
````
dism /image:"c:\Mount\WinPE" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-PowerShell.cab"

dism /image:"c:\Mount\WinPE" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-PowerShell_en-us.cab"
````
DISM Commandlets and its English language component
````
dism /image:"c:\Mount\WinPE" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-DismCmdlets.cab"

dism /image:"c:\Mount\WinPE" /add-package /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-DismCmdlets_en-us.cab"
````


# Additional Related Resources
Desktop manufacturing
https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/

Windows 10 DISM Command-Line Options
https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/deployment-image-servicing-and-management--dism--command-line-options 

Windows Commands
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands 

Windows PE
https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-intro