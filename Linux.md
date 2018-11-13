# File systems

## Resize partition to max
```bash
growpart /dev/sdb 1
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

## Autopackage - remove itself
```bash
sudo package remove autopackage
```
