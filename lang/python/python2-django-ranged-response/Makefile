#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-django-ranged-response
PKG_VERSION:=0.2.0
PKG_RELEASE:=7

PYPI_NAME:=django-ranged-response
PKG_HASH:=f71fff352a37316b9bead717fc76e4ddd6c9b99c4680cdf4783b9755af1cf985

PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/django-ranged-response/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Add Content-Range: to FileResponse
  URL:=https://github.com/i3thuan5/django-ranged-response
endef

define Package/python2-django-ranged-response
$(call Package/django-ranged-response/Default)
  DEPENDS:= \
	+PACKAGE_python2-django-ranged-response:python2 \
	python2-django1
  VARIANT:=python2
  MDEPENDS:=python2-django1
endef

define Package/python2-django-ranged-response/description
  Modified Django FileResponse that adds Content-Range headers.
endef

$(eval $(call Py2Package,python2-django-ranged-response))
$(eval $(call BuildPackage,python2-django-ranged-response))
$(eval $(call BuildPackage,python2-django-ranged-response-src))
