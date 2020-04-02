#
# Copyright (C) 2007-2019 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-requests
PKG_VERSION:=2.23.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Josef Schlehofer <josef.schlehofer@nic.cz>, Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:python-requests:requests

PYPI_NAME:=requests
PKG_HASH:=b3f43d496c6daba4493e7c431722aeb7dbc6288f52a6e04e7b6023b0247817e6

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-requests/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=HTTP library for Python
  URL:=https://2.python-requests.org/
endef

define Package/python2-requests
$(call Package/python-requests/Default)
  DEPENDS:= \
	  +PACKAGE_python2-requests:python2 \
	  +PACKAGE_python2-requests:python2-chardet \
	  +PACKAGE_python2-requests:python2-idna \
	  +PACKAGE_python2-requests:python2-urllib3 \
	  +PACKAGE_python2-requests:python2-certifi
  VARIANT:=python2
endef

define Package/python2-requests/description
  Requests is the only Non-GMO HTTP library for Python, safe for human consumption
endef

$(eval $(call Py2Package,python2-requests))
$(eval $(call BuildPackage,python2-requests))
$(eval $(call BuildPackage,python2-requests-src))
