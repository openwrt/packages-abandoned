#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=python2-evdev
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PKG_LICENSE:=BSD-3-Clause
PKG_MAINTAINER:=Paulo Costa <me@paulo.costa.nom.br>, Alexandru Ardelean <ardeleanalex@gmail.com>

PYPI_NAME:=evdev
PKG_HASH:=b1c649b4fed7252711011da235782b2c260b32e004058d62473471e5cd30634d

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-evdev/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  URL:=https://github.com/gvalkov/python-evdev
endef

define Package/python2-evdev
$(call Package/python-evdev/Default)
  TITLE:=python2-evdev
  DEPENDS:= \
     +PACKAGE_python2-evdev:python2-light \
     +PACKAGE_python2-evdev:python2-ctypes
  VARIANT:=python2
endef

define Package/python2-evdev/description
	Bindings to the Linux input handling subsystem
endef

LINUX_EVDEV_HEADERS="$(LINUX_DIR)/include/uapi/linux/input.h:$(LINUX_DIR)/include/uapi/linux/input-event-codes.h"

PYTHON2_PKG_SETUP_GLOBAL_ARGS:= \
	build build_ecodes \
	--evdev-headers="$(LINUX_EVDEV_HEADERS)" \
	build_ext

$(eval $(call Py2Package,python2-evdev))
$(eval $(call BuildPackage,python2-evdev))
$(eval $(call BuildPackage,python2-evdev-src))
