## ssh-break-while-loop
### Description

ssh break the while loop.

`0</dev/null` or `-n` option of `ssh` can resolve this problem.

### Sample Code

```bash
#!/bin/bash

cmd="ps -ef | awk '{print \$2}'"

while read node ; do
    pids=$(0</dev/null ssh "root@$node" "$cmd")
	echo "$node" $pids
done
```

```bash
#!/bin/bash

cmd="ps -ef | awk '{print \$2}'"

while read node ; do
	pids=$(ssh -n "root@$node" "$cmd")
	echo "$node" $pids
done
```

\# `-n` is a more simple and direct way!

### Related Material
- [ssh break the while loop?](http://www.unix.com/shell-programming-scripting/38060-ssh-break-while-loop.html)
- [Looping connect to different server](http://www.unix.com/shell-programming-scripting/37773-looping-connect-different-server.html)
