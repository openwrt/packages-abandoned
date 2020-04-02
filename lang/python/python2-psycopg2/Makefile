#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-psycopg2
PKG_VERSION:=2.7.6.1
PKG_RELEASE:=2

PYPI_NAME:=psycopg2
PKG_HASH:=27959abe64ca1fc6d8cd11a71a1f421d8287831a3262bd4cacd43bbf43cc3c82

PKG_MAINTAINER:=Dmitry Trefilov <the-alien@live.ru>
PKG_LICENSE:=LGPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python2/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python2-psycopg2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PostgreSQL database adapter for Python
  URL:=http://initd.org/psycopg/
  DEPENDS:=+python2 +libpq +python2-egenix-mx-base
endef

define Package/python2-psycopg2/description
 Psycopg is the most popular PostgreSQL adapter for the Python programming language
endef

define Build/Compile
	# The PATH var is required so that psycopg2's setup.py script finds pg_config
	$(call Build/Compile/Py2Mod,., \
		install --prefix=/usr --root=$(PKG_INSTALL_DIR), \
		PATH=$(STAGING_DIR)/usr/bin:$(PATH))
endef

define Package/python2-psycopg2/install
	$(INSTALL_DIR) $(1)$(PYTHON2_PKG_DIR)
	$(CP) \
	    $(PKG_INSTALL_DIR)$(PYTHON2_PKG_DIR)/* \
	    $(1)$(PYTHON2_PKG_DIR)
endef

$(eval $(call Py2Package,python2-psycopg2))
$(eval $(call BuildPackage,python2-psycopg2))
