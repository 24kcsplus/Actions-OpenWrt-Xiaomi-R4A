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

# 修改openwrt登陆地址,把下面的192.168.5.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把Xiaomi-R4A修改你喜欢的就行（不能纯数字或者使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Openwrt'' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i "s/OpenWrt /24k build $(TZ=UTC-8 date "+%Y.%m.%d") @ 24k /g" package/lean/default-settings/files/zzz-default-settings

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
sed -i 's/luci-theme-bootstrap/luci-theme-argon_armygreen/g' feeds/luci/collections/luci/Makefile

# 修改luci-theme-argon_armygreen主题渐变色，16进制RGB
#登录页面背景颜色 透明值
sed -i 's/#f7fafc/rgba(134,176,197, .5)/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css

#渐变色开始
sed -i 's/#f9ffff/#80ABC3/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#渐变色结束b8 57
sed -i 's/#7fffffb8/#5C859B/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
sed -i 's/#9effff57/#9FC4D5/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#应用+保存
#sed -i 's/#46b8da/#407994/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#未选中
#sed -i 's/#a2a287/#6F7E92/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-状态-文字的颜色
sed -i 's/#4fc352/#496A81/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-系统-文字的颜色
#sed -i 's/#fb6340/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-服务-文字的颜色
#sed -i 's/#11cdef/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-网络存储-文字的颜色
#sed -i 's/#f3a4b5/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-控制-文字的颜色
#sed -i 's/#f3a4b5/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-VPN-文字的颜色
#sed -i 's/#172b4d/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-网络-文字的颜色
#sed -i 's/#8965e0/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-带宽监视器-文字的颜色
#sed -i 's/#5e72e4/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-注销-文字的颜色
#sed -i 's/#32325d/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css

#导航栏-选中前的颜色
#sed -i 's/#f6f9fc/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#导航栏-选中后的颜色
#sed -i 's/#4fc352/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css

#面板标题，如：导航栏-总览-系统 的颜色
#sed -i 's/#32325d/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#面板标题，如：导航栏-总览-系统 触摸后按钮样式的颜色
#sed -i 's/#F0F0F0/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#复位 背景 - 边框 按钮样式的颜色
#sed -i 's/#f0ad4e/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#sed -i 's/#eea236/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#删除 背景 - 边框 按钮样式的颜色
#sed -i 's/#fb6340/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css

#已选中
#sed -i 's/#4F2EDC/#E0DAD6/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#其他（不清楚）
#sed -i 's/#00FF00/#407994/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css
#加载背景
sed -i 's/#5e72e4/#407994/g' package/lean/luci-theme-argon_armygreen/htdocs/luci-static/argon_armygreen/css/style.css

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改默认wifi名称ssid为Xiaomi_R4A
sed -i 's/ssid=OpenWrt/ssid=Xiaomi_24k/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
