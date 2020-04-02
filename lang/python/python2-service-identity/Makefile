#
# Copyright (C) 2016-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-service-identity
PKG_VERSION:=18.1.0
PKG_RELEASE:=1

PYPI_NAME:=service_identity
PKG_HASH:=0858a54aabc5b459d1aafa8a518ed2081a285087f349fe3e55197989232e2e2d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-service-identity/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Service identity verification
  URL:=https://service-identity.readthedocs.io/
endef

define Package/python2-service-identity
$(call Package/python-service-identity/Default)
  DEPENDS:= \
      +PACKAGE_python2-service-identity:python2-light \
      +PACKAGE_python2-service-identity:python2-attrs \
      +PACKAGE_python2-service-identity:python2-cryptography \
      +PACKAGE_python2-service-identity:python2-ipaddress \
      +PACKAGE_python2-service-identity:python2-pyasn1 \
      +PACKAGE_python2-service-identity:python2-pyasn1-modules
  VARIANT:=python2
endef

define Package/python2-service-identity/description
service_identity aspires to give you all the tools you need for
verifying whether a certificate is valid for the intended purposes.
endef

$(eval $(call Py2Package,python2-service-identity))
$(eval $(call BuildPackage,python2-service-identity))
$(eval $(call BuildPackage,python2-service-identity-src))
