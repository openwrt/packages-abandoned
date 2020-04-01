#
# Copyright (C) 2007-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-mysqlclient
PKG_VERSION:=1.4.6
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

PYPI_NAME:=mysqlclient
PKG_HASH:=f3fdaa9a38752a3b214a6fe79d7cae3653731a53e577821f9187e67cbecb2e16
PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk
# python-mysqlclient needs iconv
include $(INCLUDE_DIR)/nls.mk

define Package/python-mysqlclient/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  URL:=https://mysqlclient.readthedocs.io/
endef

define Package/python2-mysqlclient
  $(call Package/python-mysqlclient/Default)
  TITLE:=MySQL database adapter for Python
  DEPENDS:=+PACKAGE_python2-mysqlclient:python2 +libmysqlclient
  VARIANT:=python2
endef

define Package/python2-mysqlclient/description
 MySQLdb is an thread-compatible interface to the popular MySQL database
 server that provides the Python database API.
endef

$(eval $(call Py2Package,python2-mysqlclient))
$(eval $(call BuildPackage,python2-mysqlclient))
$(eval $(call BuildPackage,python2-mysqlclient-src))
