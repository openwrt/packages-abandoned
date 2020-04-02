#
# Copyright (C) 2007-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-django-statici18n
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=django-statici18n
PKG_HASH:=913dd056c1abcbe129b1db806cb4cfb821c4077d7e857d6eb29043ea64f4d1d0

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/django-statici18n/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Helper for generating JavaScript catalog to static files
  URL:=https://django-statici18n.readthedocs.io
endef

define Package/python2-django-statici18n
$(call Package/django-statici18n/Default)
  DEPENDS:= \
	+PACKAGE_python2-django-statici18n:python2 \
	python2-django1 \
	+PACKAGE_python2-django-statici18n:python2-django-appconf \
	+PACKAGE_python2-django-statici18n:python2-six
  VARIANT:=python2
  MDEPENDS:=python2-django1
endef

define Package/python2-django-statici18n/description
  A Django app that provides helper for generating JavaScript catalog to static files.
endef

$(eval $(call Py2Package,python2-django-statici18n))
$(eval $(call BuildPackage,python2-django-statici18n))
$(eval $(call BuildPackage,python2-django-statici18n-src))
