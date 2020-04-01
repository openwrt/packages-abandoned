#
# Copyright (C) Alexandru Ardelean <ardeleanalex@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-django1
PKG_VERSION:=1.11.29
PKG_RELEASE:=2

PYPI_NAME:=Django
PKG_HASH:=4200aefb6678019a0acf0005cd14cfce3a5e6b9b90d06145fcdd2e474ad4329c

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE LICENSE.python
PKG_CPE_ID:=cpe:/a:djangoproject:django

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/django1/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The web framework for perfectionists with deadlines.
  URL:=https://www.djangoproject.com/
endef

define Package/python2-django1
$(call Package/django1/Default)
  DEPENDS:= \
	+PACKAGE_python2-django1:python2 \
	+PACKAGE_python2-django1:python2-pytz
  VARIANT:=python2
  MENU:=1
endef

define Package/python2-django1/description
  The web framework for perfectionists with deadlines (LTS 1.11 series).
endef

$(eval $(call Py2Package,python2-django1))
$(eval $(call BuildPackage,python2-django1))
$(eval $(call BuildPackage,python2-django1-src))
