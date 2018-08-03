# File systems

## Resize partition to max
```bash
growpart /dev/sdb 1
resize2fs /dev/sdb1
```