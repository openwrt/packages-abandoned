#
# Copyright (C) 2017 Andrew McConachie
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-dpkt
PKG_VERSION:=1.9.2
PKG_RELEASE:=1

PYPI_NAME:=dpkt
PKG_HASH:=52a92ecd5ca04d5bd852bb11cb2eac4bbe38b42a7c472e0d950eeb9f82a81e54

PKG_MAINTAINER:=Andrew McConachie <andrew@depht.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python2-dpkt
	SECTION:=language-python
	CATEGORY:=Languages
	SUBMENU:=Python
	TITLE:=python2-dpkt
	URL:=https://dpkt.readthedocs.io/en/latest/
	DEPENDS:=+python2
endef

define Package/python2-dpkt/description
  dpkt is a python module for fast, simple packet creation / parsing, with definitions for the basic TCP/IP protocols
  https://pypi.python.org/pypi/dpkt
  https://github.com/kbandla/dpkt
endef

define Build/Compile
	$(call Build/Compile/Py2Mod,,\
		install --prefix=/usr --root="$(PKG_INSTALL_DIR)" \
	)
endef

$(eval $(call Py2Package,python2-dpkt))
$(eval $(call BuildPackage,python2-dpkt))
