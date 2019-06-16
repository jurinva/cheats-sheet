# File systems

## Resize partition to max
```bash
growpart /dev/sdb1
resize2fs /dev/sdb1
```

## Delete mbr including all partitions
It help, if Windows cant create partitions on disk
```bash
dd if=/dev/zero of=/dev/sdc bs=512 count=1
```

# Package managers

## Autopackage - remove package
```bash
# for root
sudo package remove packagename
# for non root
package remove celestia
```

# SSH tunel
```bash
ssh -L 3389:<ip of windows server>:3389 <ip of ssh server> -l <ssh user> -N
```

## Autopackage - remove itself
```bash
sudo package remove autopackage
```

# Ubuntu

## List ppa oneliner
```bash
for APT in `find /etc/apt/ -name \*.list`; do grep -o "^deb http://ppa.launchpad.net/[a-z0-9\-]\+/[a-z0-9\-]\+" $APT | while read ENTRY ; do USER=`echo $ENTRY | cut -d/ -f4`; PPA=`echo $ENTRY | cut -d/ -f5`; echo sudo apt-add-repository ppa:$USER/$PPA; done; done
```