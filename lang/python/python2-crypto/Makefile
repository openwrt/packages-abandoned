#
# Copyright (C) 2009-2015, 2017-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-crypto
PKG_VERSION:=2.6.1
PKG_RELEASE:=4

PYPI_NAME:=pycrypto
PKG_HASH:=f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c

PKG_LICENSE:=Public Domain
PKG_LICENSE_FILES:=COPYRIGHT
PKG_CPE_ID:=cpe:/a:dlitz:pycrypto
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

PYTHON2_PKG_SETUP_ARGS:=
PYTHON2_PKG_SETUP_VARS:= \
  CONFIG_BIG_ENDIAN="$(CONFIG_BIG_ENDIAN)"

define Package/python-crypto/Default
  SECTION:=lang-python
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Cryptography Toolkit
  URL:=https://www.dlitz.net/software/pycrypto/
  DEPENDS:=+libgmp
endef

define Package/python2-crypto
$(call Package/python-crypto/Default)
  DEPENDS+=+PACKAGE_python2-crypto:python2
  VARIANT:=python2
endef

define Package/python2-crypto/description
A collection of both secure hash functions (such as MD5 and SHA),
and various encryption algorithms (AES, DES, IDEA, RSA, ElGamal, etc.).
endef

$(eval $(call Py2Package,python2-crypto))
$(eval $(call BuildPackage,python2-crypto))
$(eval $(call BuildPackage,python2-crypto-src))
