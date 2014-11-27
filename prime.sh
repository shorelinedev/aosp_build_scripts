#!/bin/bash
#
#
#
#
#
repo sync && cd kernel/msm && make clean && export ARCH=arm && export SUBARCH=arm && make hammerhead_defconfig && make -j10 && cd && cd android/aosp_lp && . build/envsetup.sh && lunch aosp_hammerhead-userdebug && make clean && make -j10
