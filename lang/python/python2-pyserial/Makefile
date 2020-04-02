#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-pyserial
PKG_VERSION:=3.4
PKG_RELEASE:=1

PYPI_NAME:=pyserial
PKG_HASH:=6e2d401fdee0eab996cf734e67773a0143b932772ca8b42451440cfed942c627

PKG_LICENSE:=BSD
PKG_MAINTAINER:=Micke Prag <micke.prag@telldus.se>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-pyserial/Default
  SECTION:=lang-python
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=https://github.com/pyserial/pyserial
endef

define Package/python2-pyserial
$(call Package/python-pyserial/Default)
  TITLE:=python2-pyserial
  DEPENDS:=+PACKAGE_python2-pyserial:python2-light
  VARIANT:=python2
endef

define Package/python2-pyserial/description
This module encapsulates the access for the serial port. It provides backends
for Python running on Windows, OSX, Linux, BSD (possibly any POSIX compliant
system) and IronPython. The module named "serial" automatically selects the
appropriate backend.
endef

$(eval $(call Py2Package,python2-pyserial))
$(eval $(call BuildPackage,python2-pyserial))
$(eval $(call BuildPackage,python2-pyserial-src))
