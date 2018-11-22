# Add rules to Brandmauer

```powershell
New-NetFirewallRule -DisplayName "Rule Name" -Direction Inbound -Action Allow -Protoco TCP|UDP LocalPort PORT_NUMBER
```
