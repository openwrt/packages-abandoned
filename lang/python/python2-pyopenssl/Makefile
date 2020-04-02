#
# Copyright (C) 2015-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-pyopenssl
PKG_VERSION:=19.1.0
PKG_RELEASE:=1

PYPI_NAME:=pyOpenSSL
PKG_HASH:=9a24494b2602aaf402be5c9e30a0b82d4a5c67528fe8fb475e3f3bc00dd69507

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>, Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_CPE_ID:=cpe:/a:pyopenssl_project:pyopenssl

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-pyopenssl/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=OpenSSL wrapper
  URL:=https://pyopenssl.org/
endef

define Package/python2-pyopenssl
$(call Package/python-pyopenssl/Default)
  DEPENDS:= \
      +PACKAGE_python2-pyopenssl:python2-light \
      +PACKAGE_python2-pyopenssl:python2-cryptography \
      +PACKAGE_python2-pyopenssl:python2-six
  VARIANT:=python2
endef

define Package/python2-pyopenssl/description
Python wrapper module around the OpenSSL library
endef

$(eval $(call Py2Package,python2-pyopenssl))
$(eval $(call BuildPackage,python2-pyopenssl))
$(eval $(call BuildPackage,python2-pyopenssl-src))
