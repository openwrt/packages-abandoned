#
# Copyright (C) 2007-2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-django-picklefield
PKG_VERSION:=2.1.1
PKG_RELEASE:=1

PYPI_NAME:=django-picklefield
PKG_HASH:=67a5e156343e3b032cac2f65565f0faa81635a99c7da74b0f07a0f5db467b646

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

PYTHON2_PKG_SETUP_VARS:= \
  PKG_VERSION="$(PKG_VERSION)"

define Package/django-picklefield/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pickled object field for Django
  URL:=https://github.com/gintas/django-picklefield/
endef

define Package/python2-django-picklefield
$(call Package/django-picklefield/Default)
  DEPENDS:= \
	+PACKAGE_python2-django-picklefield:python2 \
	python2-django1
  VARIANT:=python2
  MDEPENDS:=python2-django1
endef

define Package/python2-django-picklefield/description
  Pickled object field for Django
endef

$(eval $(call Py2Package,python2-django-picklefield))
$(eval $(call BuildPackage,python2-django-picklefield))
$(eval $(call BuildPackage,python2-django-picklefield-src))
