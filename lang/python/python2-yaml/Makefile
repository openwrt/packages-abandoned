#
# Copyright (C) 2008-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-yaml
PKG_VERSION:=5.3
PKG_RELEASE:=1

PYPI_NAME:=PyYAML
PKG_HASH:=e9f45bd5b92c7974e59bcd2dcc8631a6b6cc380a904725fce7bc08872e691615

PKG_MAINTAINER:=Josef Schlehofer <josef.schlehofer@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:pyyaml_project:pyyaml

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-yaml/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=YAML parser and emitter for Python
  URL:=https://github.com/yaml/pyyaml
  DEPENDS:=+libyaml
endef

define Package/python2-yaml
$(call Package/python-yaml/Default)
  DEPENDS+= \
	+PACKAGE_python2-yaml:python2-light \
	+PACKAGE_python2-yaml:python2-codecs
  VARIANT:=python2
endef

define Package/python2-yaml/description
  PyYAML is a YAML parser and emitter for the Python programming language.
endef

PYTHON2_PKG_SETUP_GLOBAL_ARGS:=--with-libyaml
PYTHON2_PKG_SETUP_ARGS:=

$(eval $(call Py2Package,python2-yaml))
$(eval $(call BuildPackage,python2-yaml))
$(eval $(call BuildPackage,python2-yaml-src))
