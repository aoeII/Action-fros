#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2-fros-lean.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone https://github.com/sirpdboy/luci-app-parentcontrol.git package/luci-app-parentcontrol
git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
git clone https://github.com/sirpdboy/luci-app-advanced.git package/luci-app-advanced
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
git clone https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata

DEPENDS_PACKAGES="
	PACKAGE_luci
	PACKAGE_luci-base
	LUCI_LANG_zh_Hans
	PACKAGE_luci-compat
	PACKAGE_wget-ssl
	PACKAGE_curl
	PACKAGE_openssl-util
	PACKAGE_luci-app-zerotier
	PACKAGE_iptables-nft 
	PACKAGE_tc-tiny
	PACKAGE_iptables-mod-iprange
	PACKAGE_tc-mod-iptables
	PACKAGE_kmod-sched-core
	PACKAGE_iptables-zz-legacy
	PACKAGE_fros
	PACKAGE_fros_files
	PACKAGE_luci-app-fros 
"

init_depend_package_config()
{
	for package in $DEPENDS_PACKAGES;do
		echo "add depend package CONFIG_PACKAGE_$package"
		sed -i "/CONFIG_$package/d" .config
		echo "CONFIG_$package=y" >>.config
	done
	# make defconfig
}

init_depend_package_config
