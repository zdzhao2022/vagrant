#!/bin/bash

# Update CentOS wiht any patches
yum update -y --exclude=kernel

# Tools
yum install -y nana git unzip screen nc telnet
