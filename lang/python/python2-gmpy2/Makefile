#
# Copyright (C) 2015-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-gmpy2
PKG_VERSION:=2.0.8
PKG_RELEASE:=4

PYPI_NAME:=gmpy2
PYPI_SOURCE_EXT:=zip
PKG_HASH:=dd233e3288b90f21b0bb384bcc7a7e73557bb112ccf0032ad52aa614eb373d3f

PKG_LICENSE:=LGPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING.LESSER
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

PYTHON2_PKG_SETUP_ARGS:=--nompfr

define Package/python-gmpy2/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=GMP/MPIR, MPFR, and MPC interface
  URL:=https://github.com/aleaxit/gmpy
  DEPENDS:=+libgmp
endef

define Package/python2-gmpy2
$(call Package/python-gmpy2/Default)
  DEPENDS+=+PACKAGE_python2-gmpy2:python2-light
  VARIANT:=python2
endef

define Package/python2-gmpy2/description
gmpy2 is a C-coded Python extension module that supports multiple-precision
arithmetic. gmpy2 is the successor to the original gmpy module. The gmpy module
only supported the GMP multiple-precision library. gmpy2 adds support for the
MPFR (correctly rounded real floating-point arithmetic) and MPC (correctly
rounded complex floating-point arithmetic) libraries. gmpy2 also updates the
API and naming conventions to be more consistent and support the additional
functionality.
endef

$(eval $(call Py2Package,python2-gmpy2))
$(eval $(call BuildPackage,python2-gmpy2))
$(eval $(call BuildPackage,python2-gmpy2-src))
