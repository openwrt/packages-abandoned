#
# Copyright (C) 2016-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-attrs
PKG_VERSION:=19.3.0
PKG_RELEASE:=1

PYPI_NAME:=attrs
PKG_HASH:=f7b7ce16570fe9965acd6d30101a28f62fb4a7f9e926b3bbc9b61f8b04247e72

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-attrs/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Classes Without Boilerplate
  URL:=https://www.attrs.org/
endef

define Package/python2-attrs
$(call Package/python-attrs/Default)
  DEPENDS:=+PACKAGE_python2-attrs:python2-light
  VARIANT:=python2
endef

define Package/python2-attrs/description
attrs is an MIT-licensed Python package with class decorators that ease
the chores of implementing the most common attribute-related object
protocols.
endef

$(eval $(call Py2Package,python2-attrs))
$(eval $(call BuildPackage,python2-attrs))
$(eval $(call BuildPackage,python2-attrs-src))
