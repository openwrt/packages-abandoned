#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-lxml
PKG_VERSION:=4.4.2
PKG_RELEASE:=1

PYPI_NAME:=lxml
PKG_HASH:=eff69ddbf3ad86375c344339371168640951c302450c5d3e9936e98d6459db06

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSES.txt
PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_CPE_ID:=cpe:/a:lxml:lxml

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-lxml/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=https://lxml.de
  DEPENDS:=+libxml2 +libxslt +libexslt
endef

define Package/python2-lxml
$(call Package/python-lxml/Default)
  TITLE:=python2-lxml
  DEPENDS+=+PACKAGE_python2-lxml:python2-light +PACKAGE_python2-lxml:python2-codecs
  VARIANT:=python2
endef

define Package/python2-lxml/description
The lxml XML toolkit is a Pythonic binding
for the C libraries libxml2 and libxslt.
endef

TARGET_LDFLAGS += -lxml2 -lxslt -lexslt

define Py2Build/Compile
	$(call Build/Compile/Py2Mod,, \
		install --prefix="/usr" --root="$(PKG_INSTALL_DIR)" \
		--static \
		--single-version-externally-managed \
		, \
		INCLUDE="$(STAGING_DIR)/usr/include/ $(STAGING_DIR)/usr/include/libxml2" \
		LIBRARY="$(STAGING_DIR)/usr/lib $(STAGING_DIR)/lib" \
		CFLAGS="$(TARGET_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
	)
endef

$(eval $(call Py2Package,python2-lxml))
$(eval $(call BuildPackage,python2-lxml))
$(eval $(call BuildPackage,python2-lxml-src))
