# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-pyodbc
PKG_VERSION:=4.0.26
PKG_RELEASE:=2

PYPI_NAME:=pyodbc
PKG_HASH:=e52700b5d24a846483b5ab80acd9153f8e593999c9184ffea11596288fb33de3
PKG_BUILD_DEPENDS:=python2 unixodbc
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt
PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>

PKG_BUILD_DEPENDS:=unixodbc/host

include ../pypi.mk
include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-pyodbc/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=https://github.com/mkleehammer/pyodbc
  DEPENDS:=+unixodbc $(CXX_DEPENDS)
endef

define Package/python2-pyodbc
$(call Package/python-pyodbc/Default)
  TITLE:=python2-pyodbc
  DEPENDS+=+PACKAGE_python2-pyodbc:python2-light \
           +PACKAGE_python2-pyodbc:python2-logging \
           +PACKAGE_python2-pyodbc:python2-openssl
  VARIANT:=python2
endef

define Package/python2-pyodbc/description
DB API Module for ODBC

A Python DB API 2 module for ODBC. This project provides an up-to-date,
convenient interface to ODBC using native data types like datetime and decimal.
endef

$(eval $(call Py2Package,python2-pyodbc))
$(eval $(call BuildPackage,python2-pyodbc))
