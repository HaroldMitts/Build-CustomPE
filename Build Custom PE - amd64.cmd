copype amd64 c:\tmp\winpe\amd64-customPE

dism /mount-image /imagefile:"c:\TMP\WinPE\amd64-Custom\media\sources\boot.wim" /index:1 /mountdir:"C:\Mount\WinPE"

dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-WMI.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-WMI_en-us.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-Scripting.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-Scripting_en-us.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-NetFx.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-NetFx_en-us.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-PowerShell.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-PowerShell_en-us.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-DismCmdlets.cab"
dism /add-package /image:"C:\Mount\WinPE" /packagepath:"c:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\en-us\WinPE-DismCmdlets_en-us.cab"


dism /get-mountedimageinfo
dism /image:"c:\Mount\WinPE" /get-pesettings
dism /image:"c:\Mount\WinPE" /get-packages

notepad C:\Mount\WinPE\Windows\System32\Startnet.cmd

dism /unmount-image /mountdir:"C:\Mount\WinPE" /commit