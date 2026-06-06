#!/bin/bash

# 修正 360T7 设备树中错误的包含文件名
if [ -f "target/linux/mediatek/dts/mt7981b-qihoo-360t7.dts" ]; then
    sed -i 's/"mt7981.dtsi"/"mt7981b.dtsi"/g' target/linux/mediatek/dts/mt7981b-qihoo-360t7.dts
    echo "成功将 360T7 设备树中的 mt7981.dtsi 修正为 mt7981b.dtsi！"
fi

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
