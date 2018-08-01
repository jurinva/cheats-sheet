#!/bin/bash

#resize partition to max
growpart /dev/sdb 1
resize2fs /dev/sdb1
