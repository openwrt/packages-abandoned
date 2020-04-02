#
# Copyright (C) 2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-hyperlink
PKG_VERSION:=19.0.0
PKG_RELEASE:=1

PYPI_NAME:=hyperlink
PKG_HASH:=4288e34705da077fada1111a24a0aa08bb1e76699c9ce49876af722441845654

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-hyperlink/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure-Python immutable URLs
  URL:=https://github.com/python-hyper/hyperlink
endef

define Package/python2-hyperlink
$(call Package/python-hyperlink/Default)
  DEPENDS:= \
      +PACKAGE_python2-hyperlink:python2-light \
      +PACKAGE_python2-hyperlink:python2-idna
  VARIANT:=python2
endef

define Package/python2-hyperlink/description
Hyperlink provides a pure-Python implementation of immutable URLs. Based
on RFC 3986 and 3987, the Hyperlink URL makes working with both URIs and
IRIs easy.
endef

$(eval $(call Py2Package,python2-hyperlink))
$(eval $(call BuildPackage,python2-hyperlink))
$(eval $(call BuildPackage,python2-hyperlink-src))
