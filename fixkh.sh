#!/bin/bash

# so bloody tired of doing this manually when we re-pxe a machine
line=$1
echo $line
vim /Users/daveryack/.ssh/known_hosts -c ":$line" -c "normal dd" -c ":wq"
