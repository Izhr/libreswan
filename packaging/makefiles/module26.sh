#!/bin/sh

LIBRESWANSRCDIR=/mara4/libreswan-2/klips26
KERNELSRC=/mara4/libreswan-2/klips26/UMLPOOL/plain26
MODULE_DEF_INCLUDE=${LIBRESWANSRCDIR}/packaging/linus/config-all.h

export LIBRESWANSRCDIR KERNELSRC MODULE_DEF_INCLUDE

#SUBDIRS=${LIBRESWANSRCDIR}/linux/net/ipsec 

make --debug=biv -C ${KERNELSRC} V=1 BUILDDIR=`pwd` SUBDIRS=`pwd` MODULE_DEF_INCLUDE=${MODULE_DEF_INCLUDE} ARCH=um $*


