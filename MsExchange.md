# Exchange 2013 emc blank page (error 15021)
System log contains next errors
```Event ID 15021 Source HttpEvent: An error occurred while using SSL configuration for endpoint 0.0.0.0:444. The error status code is contained within the returned data```

```cmd
netsh http show sslcert
SSL Certificate bindings:
-------------------------
...
    IP:port                      : 0.0.0.0:444
    Certificate Hash             : 2f74ed7ce04e3315c2a634c9dfb83278132fb51e
    Application ID               : {4dcc9b81-e3ec-4a21-b012-59fc61bc0914}
    Certificate Store Name       : MY
    Verify Client Certificate Revocation : Enabled
    Verify Revocation Using Cached Client Certificate Only : Disabled
    Usage Check                  : Enabled
    Revocation Freshness Time    : 0
    URL Retrieval Timeout        : 0
    Ctl Identifier               : (null)
    Ctl Store Name               : (null)
    DS Mapper Usage              : Disabled
    Negotiate Client Certificate : Disabled
...
netsh http delete sslcert ipport=0.0.0.0:444
netsh http add sslcert ipport=0.0.0.0:444 certhash=2f74ed7ce04e3315c2a634c9dfb83278132fb51e appid="{4dcc9b81-e3ec-4a21-b012-59fc61bc0914}"
```
Or
IISManager -> Sites -> Exchange Back End -> Bindings -> https -> Edit -> SSL Certificate -> Select

Right certificate you can find in Certlm
Certificates-Local Computer -> Find
Contains = 2f74ed7ce04e3315c2a634c9dfb83278132fb51e
Look in Field = SHA1 Hash
