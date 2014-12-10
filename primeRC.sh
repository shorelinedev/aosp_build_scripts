#!/bin/bash
#
#
#
#
#
repo sync && cd kernel/msm && make clean && export ARCH=arm && export SUBARCH=arm && make hammerhead_defconfig && make -j10 && cd && cd android/aosp_lp && . build/envsetup.sh && lunch aosp_hammerhead-user && make clean && make -j10 && ./injection.sh && make -j10 otapackage
