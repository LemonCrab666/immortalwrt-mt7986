#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 更改默认IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#添加软件包
#OpenClash
rm -rf feeds/luci/applications/luci-app-openclash
git clone -b master --single-branch --filter=blob:none https://github.com/vernesong/OpenClash.git feeds/luci/applications/luci-app-openclash
#AdguardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#Mihomo
git clone -b main --single-branch --filter=blob:none https://github.com/morytyann/OpenWrt-mihomo
mv OpenWrt-mihomo/luci-app-mihomo package/
mv OpenWrt-mihomo/mihomo package/
#添加qosmate
#git clone https://github.com/hudra0/qosmate.git package/qosmate
#git clone https://github.com/LemonCrab666/luci-app-qosmate.git package/luci-app-qosmate
