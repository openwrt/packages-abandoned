#
# Copyright (C) 2007-2019 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-pytz
PKG_VERSION:=2019.3
PKG_RELEASE:=1

PYPI_NAME:=pytz
PKG_HASH:=b02c06db6cf09c12dd25137e563b31700d3b80fcc4ad23abb7a315f2789819be

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-pytz/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  URL:=https://pythonhosted.org/pytz/
endef

define Package/python2-pytz
$(call Package/python-pytz/Default)
  TITLE:=World timezone definitions, modern and historical
  DEPENDS:=+PACKAGE_python2-pytz:python2-light
  VARIANT:=python2
endef

define Package/python2-pytz/description
  World timezone definitions, modern and historical
endef

$(eval $(call Py2Package,python2-pytz))
$(eval $(call BuildPackage,python2-pytz))
$(eval $(call BuildPackage,python2-pytz-src))
