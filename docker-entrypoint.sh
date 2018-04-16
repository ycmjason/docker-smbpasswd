#!/bin/sh
set -e
test ! -z "$DEBUG" && set -x

/usr/bin/smbpasswd "$@"
