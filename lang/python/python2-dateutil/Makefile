#
# Copyright (C) 2007-2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-dateutil
PKG_VERSION:=2.8.1
PKG_RELEASE:=1
PKG_LICENSE:=BSD-2-Clause

PYPI_NAME:=python-dateutil
PKG_HASH:=73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c
PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk

include ../python2-package.mk

define Package/python-dateutil/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Extensions to the standard Python datetime module
  URL:=https://dateutil.readthedocs.org/
endef

define Package/python2-dateutil
$(call Package/python-dateutil/Default)
  DEPENDS:=+PACKAGE_python2-dateutil:python2 +PACKAGE_python2-dateutil:python2-six
  VARIANT:=python2
endef

define Package/python2-dateutil/description
  Extensions to the standard Python datetime module
endef

$(eval $(call Py2Package,python2-dateutil))
$(eval $(call BuildPackage,python2-dateutil))
$(eval $(call BuildPackage,python2-dateutil-src))
