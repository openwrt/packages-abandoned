#
# Copyright (C) 2006-2011, 2015-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-twisted
PKG_VERSION:=20.3.0
PKG_RELEASE:=1

PYPI_NAME:=Twisted
PYPI_SOURCE_EXT:=tar.bz2
PKG_HASH:=d72c55b5d56e176563b91d11952d13b01af8725c623e498db5507b6614fc1e10

PKG_BUILD_DEPENDS:=libtirpc

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>
PKG_CPE_ID:=cpe:/a:twistedmatrix:twisted

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-twisted/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous networking framework
  URL:=https://twistedmatrix.com/
endef

define Package/python2-twisted
$(call Package/python-twisted/Default)
  DEPENDS:= \
      +PACKAGE_python2-twisted:python2-light \
      +PACKAGE_python2-twisted:python2-attrs \
      +PACKAGE_python2-twisted:python2-automat \
      +PACKAGE_python2-twisted:python2-constantly \
      +PACKAGE_python2-twisted:python2-incremental \
      +PACKAGE_python2-twisted:python2-hyperlink \
      +PACKAGE_python2-twisted:python2-setuptools \
      +PACKAGE_python2-twisted:python2-zope-interface
  VARIANT:=python2
endef

define Package/python2-twisted/description
Twisted is a networking engine written in Python, supporting numerous
protocols. It contains a web server, numerous chat clients, chat servers,
mail servers, and more.
endef

define Py2Package/python2-twisted/filespec
+|$(PYTHON2_PKG_DIR)
-|$(PYTHON2_PKG_DIR)/twisted/conch/scripts/tkconch.py
endef

define Py2Package/python2-twisted/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	for bin in $(1)/usr/bin/*; do \
		mv $$$$bin $$$${bin}2 ; \
	done
endef

$(eval $(call Py2Package,python2-twisted))
$(eval $(call BuildPackage,python2-twisted))
$(eval $(call BuildPackage,python2-twisted-src))
