#
# Copyright (C) 2015-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-ply
PKG_VERSION:=3.11
PKG_RELEASE:=1

PYPI_NAME:=ply
PKG_HASH:=00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=README.md
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-ply/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=lex and yacc for Python
  URL:=http://www.dabeaz.com/ply/
endef

define Package/python2-ply
$(call Package/python-ply/Default)
  DEPENDS:=+PACKAGE_python2-ply:python2-light
  VARIANT:=python2
endef

define Package/python2-ply/description
PLY is a 100% Python implementation of the common parsing tools lex
and yacc.
endef

$(eval $(call Py2Package,python2-ply))
$(eval $(call BuildPackage,python2-ply))
$(eval $(call BuildPackage,python2-ply-src))
