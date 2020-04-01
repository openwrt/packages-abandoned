include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=python2-libmodbus
PKG_VERSION:=0.5.0
PKG_RELEASE:=1

PKG_LICENSE:=BSD-3-Clause
PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>

PYPI_NAME:=pylibmodbus
PKG_HASH:=80f837304ffa8476145ea643f6b98aa94b205013a96f1e5173d7bdc776426aee

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-libmodbus/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  URL:=https://pypi.org/project/pylibmodbus
endef

define Package/python2-libmodbus
$(call Package/python-libmodbus/Default)
  TITLE:=python2-libmodbus
  DEPENDS:=+libmodbus \
     +PACKAGE_python2-libmodbus:python2-light \
     +PACKAGE_python2-libmodbus:python2-cffi
  VARIANT:=python2
endef

define Package/python2-libmodbus/description
	Python Interface for libmodbus written with CFFI.
endef

$(eval $(call Py2Package,python2-libmodbus))
$(eval $(call BuildPackage,python2-libmodbus))
