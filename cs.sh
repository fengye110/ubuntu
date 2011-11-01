#! /bin/bash


DIR="/projects/android/src/linux-2.6.36-android"
echo $DIR

find $DIR  \
    -path "$DIR/arch/arm/common*" -o   \
    -path "$DIR/arch/arm/kernel*" -o   \
    -path "$DIR/arch/arm/lib*" -o      \
    -path "$DIR/arch/arm/mach-s3c64xx*" -o     \
    -path "$DIR/arch/arm/mm*" -o   \
    -path "$DIR/arch/arm/plat-samsung*" -o     \
    -path "$DIR/arch/arm/vfp*" -o      \
    -path "$DIR/tmp*" -prune -o                                           \
    -path "$DIR/Documentation*" -prune -o                                 \
    -path "$DIR/scripts*" -prune -o                                       \
    -path "$DIR/samples*" -prune -o                                       \
    -name "*.[chxsS]" -print >cscope.files

#find $DIR  -name "*.[chxsS]" 
#find "$DIR" -name "*.[chxsS]"
