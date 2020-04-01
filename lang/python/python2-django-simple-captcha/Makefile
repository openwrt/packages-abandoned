#
# Copyright (C) 2007-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-django-simple-captcha
PKG_VERSION:=0.5.12
PKG_RELEASE:=3

PKG_SOURCE:=django-simple-captcha-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/mbi/django-simple-captcha/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=89db73a3883573ad5e22c511948a5500491f9848363174d835a2364750c81a77

PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/$(BUILD_VARIANT)-$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

PKG_UNPACK:=$(HOST_TAR) -C $(PKG_BUILD_DIR) --strip-components=1 -xzf $(DL_DIR)/$(PKG_SOURCE)

define Package/django-simple-captcha/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple Django captcha application
  URL:=https://github.com/mbi/django-simple-captcha
endef

define Package/python2-django-simple-captcha
$(call Package/django-simple-captcha/Default)
  DEPENDS:= \
	+PACKAGE_python2-django-simple-captcha:python2 \
	+PACKAGE_python2-django-simple-captcha:python2-six \
	python2-django1 \
	+PACKAGE_python2-django-simple-captcha:python2-pillow \
	+PACKAGE_python2-django-simple-captcha:python2-django-ranged-response
  VARIANT:=python2
  MDEPENDS:=python2-django1
endef

define Package/python2-django-simple-captcha/description
  Django Simple Captcha is an extremely simple, yet highly customizable Django
  application to add captcha images to any Django form.
endef

$(eval $(call Py2Package,python2-django-simple-captcha))
$(eval $(call BuildPackage,python2-django-simple-captcha))
$(eval $(call BuildPackage,python2-django-simple-captcha-src))
