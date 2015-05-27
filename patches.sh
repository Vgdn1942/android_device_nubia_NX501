#!/bin/bash

cd `dirname $0`
DSTDIR=$1

if [ -z "$DSTDIR" ]
then
    echo "Используйте: $0 <папка с исходниками>"
    exit 1
fi

red=$(tput setaf 1) # Red
grn=$(tput setaf 2) # Green
txtrst=$(tput sgr0) # Reset

#echo "${red}Linaro patches${txtrst}"
#sh patches/linaro/patch.sh $DSTDIR

#echo "${red}Prebuilt Chromium patches${txtrst}"
#sh patches/prebuilt_chromium/patch.sh $DSTDIR

# Исправление кнопки "Home" и виброотклика
if
echo "${grn}Патч 'Исправление кнопки 'Home', виброотклика кнопок и формата даты'${txtrst}"
cat patches/frameworks.patch | patch -d $DSTDIR/frameworks/base/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

# Отключение блочной сборки
#if
#echo "${grn}Патч 'Отключение блочной сборки'${txtrst}"
#cat patches/disable_block_compile.patch | patch -d $DSTDIR/build/ -p1 -N -r -
#then
#echo "${grn}Применён успешно!${txtrst}"
#else
#echo "${red}Не применён!${txtrst}"
#fi

# Отключение всех языков, кроме русского, украинского и английского
#if
#echo "${grn}Патч 'Отключение всех языков, кроме русского, украинского, английского и китайского'${txtrst}"
#cat patches/languages.patch | patch -d $DSTDIR/build/ -p1 -N -r -
#then
#echo "${grn}Применён успешно!${txtrst}"
#else
#echo "${red}Не применён!${txtrst}"
#fi

# Изменение формата даты
if
echo "${grn}Патч 'Изменение формата даты'${txtrst}"
cat patches/date.patch | patch -d $DSTDIR/build/ -p1 -N -r -
cat patches/date2.patch | patch -d $DSTDIR/vendor/cm/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

# sepolicy twrp cm12
if
echo "${grn}Патч 'sepolicy twrp cm12'${txtrst}"
cat patches/twrp_sepolicy_cm12.patch | patch -d $DSTDIR/external/sepolicy/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

# Отключение сборки эмулятора
if
echo "${grn}Патч 'disable emulator'${txtrst}"
cat patches/disable_emulator.patch | patch -d $DSTDIR/build/ -p1 -N -r -
cat patches/disable_emulator2.patch | patch -d $DSTDIR/external/qemu/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

# Русская частотная сетка в радио по умолчанию
if
echo "${grn}Патч 'fm ru frequency'${txtrst}"
cat patches/fm_ru_frequency.patch | patch -d $DSTDIR/hardware/qcom/fm/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

cd $DSTDIR

#git diff > x.patch
