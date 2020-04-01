#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-voluptuous
PKG_VERSION:=0.11.7
PKG_RELEASE:=1

PYPI_NAME:=voluptuous
PKG_HASH:=2abc341dbc740c5e2302c7f9b8e2e243194fb4772585b991931cb5b22e9bf456

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING
PKG_MAINTAINER:=Josef Schlehofer <josef.schlehofer@nic.cz>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-voluptuous/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Data validation library
  URL:=https://github.com/alecthomas/voluptuous
endef

define Package/python2-voluptuous
$(call Package/python-voluptuous/Default)
  DEPENDS:= \
      +PACKAGE_python2-voluptuous:python2-light
  VARIANT:=python2
endef

define Package/python2-voluptuous/description
It is primarily intended for validating data coming into Python as JSON, YAML, etc.
endef

$(eval $(call Py2Package,python2-voluptuous))
$(eval $(call BuildPackage,python2-voluptuous))
$(eval $(call BuildPackage,python2-voluptuous-src))
