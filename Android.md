# SSH Tunnel (ConnectBot)

Access the menu and choose 'Add port forward' and fill in details similar to this:
```
Nickname: work
Type: Local
Source port: 3389
Destination: workpc:3389
```
Save it. Disconnect and connect again to make the port forward to come into effect.

Once connected, open Remote RDP Lite and make a connection as follows:
```
Host: localhost
Port: 3389
```
Go back and select @localhost or whatever you named it. You should get to the login screen.