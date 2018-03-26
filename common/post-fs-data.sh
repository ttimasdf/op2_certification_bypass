#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
resetprop=$(which resetprop)
$resetprop -n ro.build.description "OnePlus3-user 7.1.1 NMF26F 108 dev-keys"
$resetprop -n ro.build.fingerprint "OnePlus/OnePlus3/OnePlus3:7.1.1/NMF26F/08081200:user/release-keys"
$resetprop -n ro.build.oemfingerprint "7.1.1/NMF26F/08081200:user/release-keys"
