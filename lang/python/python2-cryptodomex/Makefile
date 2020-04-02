# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-cryptodomex
PKG_VERSION:=3.9.0
PKG_RELEASE:=1

PYPI_NAME:=pycryptodomex
PKG_HASH:=8b604f4fa1de456d6d19771b01c2823675a75a2c60e51a6b738f71fdfe865370

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst
PKG_MAINTAINER:=Richard Yu <yurichard3839@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

PYTHON2_PKG_SETUP_ARGS:=
PYTHON2_PKG_SETUP_VARS:= \
  CONFIG_BIG_ENDIAN="$(CONFIG_BIG_ENDIAN)"

define Package/python-cryptodomex/Default
  SECTION:=lang-python
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A self-contained cryptographic library for Python
  URL:=https://www.pycryptodome.org/
  DEPENDS:=+libgmp
endef

define Package/python2-cryptodomex
$(call Package/python-cryptodomex/Default)
  DEPENDS+=+PACKAGE_python2-cryptodomex:python2
  VARIANT:=python2
endef

define Package/python2-cryptodomex/description
PyCryptodome is a self-contained Python package of low-level
cryptographic primitives.
endef

$(eval $(call Py2Package,python2-cryptodomex))
$(eval $(call BuildPackage,python2-cryptodomex))
$(eval $(call BuildPackage,python2-cryptodomex-src))
