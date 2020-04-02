#
# Copyright (C) 2007-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-flup
PKG_VERSION:=1.0.3
PKG_RELEASE:=3

PYPI_NAME:=flup
PKG_HASH:=5eb09f26eb0751f8380d8ac43d1dfb20e1d42eca0fa45ea9289fa532a79cd159

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=PKG-INFO

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/flup/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Random assortment of WSGI servers
  URL:=https://www.saddi.com/software/flup/
endef

define Package/python2-flup
$(call Package/flup/Default)
  DEPENDS+= \
      +PACKAGE_python2-flup:python2-light \
      +PACKAGE_python2-flup:python2-logging
  VARIANT:=python2
endef

define Package/python2-flup/description
  Random assortment of WSGI servers.
endef

$(eval $(call Py2Package,python2-flup))
$(eval $(call BuildPackage,python2-flup))
$(eval $(call BuildPackage,python2-flup-src))
