# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-vobject
PKG_VERSION:=0.9.6.1
PKG_RELEASE:=1
PKG_LICENSE:=Apache-2.0

PYPI_NAME:=vobject
PKG_HASH:=96512aec74b90abb71f6b53898dd7fe47300cc940104c4f79148f0671f790101

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk

include ../python2-package.mk

define Package/python-vobject/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  MAINTAINER:=Daniel Dickinson <cshored@thecshore.com>
  TITLE:=VObject
  URL:=http://eventable.github.io/vobject/
endef

define Package/python2-vobject
$(call Package/python-vobject/Default)
  DEPENDS:=+PACKAGE_python2-vobject:python2 +PACKAGE_python2-vobject:python2-dateutil
  VARIANT:=python2
endef

define Package/python2-vobject/description
  vCard and vCalendar support for Python
endef

$(eval $(call Py2Package,python2-vobject))
$(eval $(call BuildPackage,python2-vobject))
$(eval $(call BuildPackage,python2-vobject-src))
