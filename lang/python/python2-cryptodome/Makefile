# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-cryptodome
PKG_VERSION:=3.9.0
PKG_RELEASE:=1

PYPI_NAME:=pycryptodome
PKG_HASH:=dbeb08ad850056747aa7d5f33273b7ce0b9a77910604a1be7b7a6f2ef076213f

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst
PKG_MAINTAINER:=Richard Yu <yurichard3839@gmail.com>
PKG_CPE_ID:=cpe:/a:pycryptodome:pycryptodome

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

PYTHON2_PKG_SETUP_ARGS:=
PYTHON2_PKG_SETUP_VARS:= \
  CONFIG_BIG_ENDIAN="$(CONFIG_BIG_ENDIAN)"

define Package/python-cryptodome/Default
  SECTION:=lang-python
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A self-contained cryptographic library for Python
  URL:=https://www.pycryptodome.org/
  DEPENDS:=+libgmp
endef

define Package/python2-cryptodome
$(call Package/python-cryptodome/Default)
  DEPENDS+=+PACKAGE_python2-cryptodome:python2
  VARIANT:=python2
  CONFLICTS:=python2-crypto
endef

define Package/python2-cryptodome/description
PyCryptodome is a self-contained Python package of low-level
cryptographic primitives.
endef

$(eval $(call Py2Package,python2-cryptodome))
$(eval $(call BuildPackage,python2-cryptodome))
$(eval $(call BuildPackage,python2-cryptodome-src))
