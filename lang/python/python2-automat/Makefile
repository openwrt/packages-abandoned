#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-automat
PKG_VERSION:=20.2.0
PKG_RELEASE:=1

PYPI_NAME:=Automat
PKG_HASH:=7979803c74610e11ef0c0d68a2942b152df52da55336e0c9d58daf1831cbdf33

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

PYTHON2_PKG_SETUP_VARS:= \
  PKG_VERSION="$(PKG_VERSION)"

define Package/python-automat/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Concise, idiomatic finite-state automata
  URL:=https://github.com/glyph/Automat
endef

define Package/python2-automat
$(call Package/python-automat/Default)
  DEPENDS:= \
      +PACKAGE_python2-automat:python2-light \
      +PACKAGE_python2-automat:python2-attrs \
      +PACKAGE_python2-automat:python2-six
  VARIANT:=python2
endef

define Package/python2-automat/description
Automat is a library for concise, idiomatic Python expression of
finite-state automata (particularly deterministic finite-state
transducers).
endef

define Py2Package/python2-automat/filespec
+|$(PYTHON2_PKG_DIR)
-|$(PYTHON2_PKG_DIR)/automat/_visualize.py
endef

$(eval $(call Py2Package,python2-automat))
$(eval $(call BuildPackage,python2-automat))
$(eval $(call BuildPackage,python2-automat-src))
