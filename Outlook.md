## Get Letters info from Outlook by Powershell
```powershell
$f1 = "Folder1"; $f2 = "Folder2"; $olFolderInbox = 6; $ol = new-object -comobject "Outlook.Application"; $mapi = $ol.getnamespace("mapi"); $inbox = $mapi.GetDefaultFolder($olFolderInbox); $msgs = $inbox.Folders.Item($f1).Folders.Item($f2); $msgs.items | Select-Object TaskSubject, CreationTime | export-Csv c:\1\emails.csv -noTypeInformatio
```
