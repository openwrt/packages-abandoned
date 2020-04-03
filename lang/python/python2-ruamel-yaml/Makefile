#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-ruamel-yaml
PKG_VERSION:=0.15.100
PKG_RELEASE:=1

PYPI_NAME:=ruamel.yaml
PKG_HASH:=8e42f3067a59e819935a2926e247170ed93c8f0b2ab64526f888e026854db2e4

PKG_MAINTAINER:=Josef Schlehofer <josef.schlehofer@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/ruamel-yaml/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=YAML 1.2 loader/dumper package for Python
  URL:=https://bitbucket.org/ruamel/yaml
endef

define Package/python2-ruamel-yaml
$(call Package/ruamel-yaml/Default)
  DEPENDS:= \
      +PACKAGE_python2-ruamel-yaml:python2-light
  VARIANT:=python2
endef

define Package/python2-ruamel-yaml/description
ruamel-yaml is a YAML parser/emitter that supports roundtrip preservation of comments, seq/map flow style, and map key order
endef

$(eval $(call Py2Package,python2-ruamel-yaml))
$(eval $(call BuildPackage,python2-ruamel-yaml))
$(eval $(call BuildPackage,python2-ruamel-yaml-src))
