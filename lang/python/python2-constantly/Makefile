#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-constantly
PKG_VERSION:=15.1.0
PKG_RELEASE:=1

PYPI_NAME:=constantly
PKG_HASH:=586372eb92059873e29eba4f9dec8381541b4d3834660707faf8ba59146dfc35

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-constantly/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Symbolic constants in Python
  URL:=https://github.com/twisted/constantly
endef

define Package/python2-constantly
$(call Package/python-constantly/Default)
  DEPENDS:=+PACKAGE_python2-constantly:python2-light
  VARIANT:=python2
endef

define Package/python2-constantly/description
A library that provides symbolic constant support. It includes
collections and constants with text, numeric, and bit flag values.
Originally twisted.python.constants from the Twisted project.
endef

$(eval $(call Py2Package,python2-constantly))
$(eval $(call BuildPackage,python2-constantly))
$(eval $(call BuildPackage,python2-constantly-src))
