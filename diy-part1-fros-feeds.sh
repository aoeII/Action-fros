#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1-fros-feeds.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

rm -rf feeds.conf.default
touch feeds.conf.default
#echo 'src-git-full packages https://git.openwrt.org/feed/packages.git;openwrt-23.05' >>feeds.conf.default
#echo 'src-git-full luci https://git.openwrt.org/project/luci.git;openwrt-23.05' >>feeds.conf.default
#echo 'src-git-full routing https://git.openwrt.org/feed/routing.git;openwrt-23.05' >>feeds.conf.default
#echo 'src-git-full telephony https://git.openwrt.org/feed/telephony.git;openwrt-23.05' >>feeds.conf.default

echo 'src-git-full packages https://git.openwrt.org/feed/packages.git;openwrt-23.05.0-rc1' >>feeds.conf.default
echo 'src-git-full luci https://git.openwrt.org/project/luci.git;openwrt-23.05.0-rc1' >>feeds.conf.default
echo 'src-git-full routing https://git.openwrt.org/feed/routing.git;openwrt-23.05.0-rc1' >>feeds.conf.default
echo 'src-git-full telephony https://git.openwrt.org/feed/telephony.git;openwrt-23.05.0-rc1' >>feeds.conf.default

echo 'src-git-full fros https://github.com/openfros/packages.git' >>feeds.conf.default




