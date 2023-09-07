#!/bin/bash
set -x
DEBIAN_FRONTEND=noninteractive apt-get update -y
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
DEBIAN_FRONTEND=noninteractive apt-get install nodejs mysql-client -y