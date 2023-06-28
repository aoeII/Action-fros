#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2-fros-openwrt-v23.05.0-rc1.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone https://github.com/sirpdboy/sirpdboy-package package/sirpdboy-package
git clone https://github.com/sirpdboy/luci-app-parentcontrol.git package/luci-app-parentcontrol
#git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
#git clone https://github.com/sirpdboy/luci-app-advanced.git package/luci-app-advanced
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
#git clone https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata
