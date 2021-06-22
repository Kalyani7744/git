#Download and Install edge
    $WebClient = New-Object System.Net.WebClient
    $wc.UseDefaultCredentials = $true
    $WebClient.DownloadFile("https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/59c478d3-513a-4060-837b-01ad385d6aaa/MicrosoftEdgeEnterpriseX86.msi","C:\Packages\MicrosoftEdgeBetaEnterpriseX64.msi")
    sleep 5
    
    Start-Process msiexec.exe -Wait '/I C:\Packages\MicrosoftEdgeBetaEnterpriseX64.msi /qn' -Verbose 
    sleep 5
    $WshShell = New-Object -comObject WScript.Shell
    $Shortcut = $WshShell.CreateShortcut("C:\Users\Public\Desktop\Azure Portal.lnk")
    $Shortcut.TargetPath = """C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"""
    $argA = """https://portal.azure.com"""
    $Shortcut.Arguments = $argA 
    $Shortcut.Save()
