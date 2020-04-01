#
# Copyright (C) 2007-2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-simplejson
PKG_VERSION:=3.17.0
PKG_RELEASE:=1
PKG_LICENSE:=MIT
PKG_CPE_ID:=cpe:/a:simplejson_project:simplejson

PYPI_NAME:=simplejson
PKG_HASH:=2b4b2b738b3b99819a17feaf118265d0753d5536049ea570b3c43b51c4701e81

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-simplejson/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
  URL:=https://simplejson.readthedocs.org/
endef

define Package/python2-simplejson
$(call Package/python-simplejson/Default)
  TITLE:=Simple, fast, extensible JSON encoder/decoder for Python 2
  DEPENDS:=+PACKAGE_python2-simplejson:python2-light +PACKAGE_python2-simplejson:python2-decimal
  VARIANT:=python2
endef

define Package/python2-simplejson/description
  Simple, fast, extensible JSON encoder/decoder for Python
endef

define Py2Package/python2-simplejson/filespec
+|$(PYTHON2_PKG_DIR)
-|$(PYTHON2_PKG_DIR)/simplejson/tests
endef

$(eval $(call Py2Package,python2-simplejson))
$(eval $(call BuildPackage,python2-simplejson))
$(eval $(call BuildPackage,python2-simplejson-src))
