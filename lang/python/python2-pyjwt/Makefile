#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-pyjwt
PKG_VERSION:=1.7.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Eneas U de Queiroz <cote2004-github@yahoo.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=PyJWT
PKG_HASH:=8d59a976fb773f3e6a39c85636357c4f0e242707394cadadd9814f5cbaa20e96

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-pyjwt/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JSON Web Token implementation in Python
  URL:=http://github.com/jpadilla/pyjwt
endef

define Package/python2-pyjwt
  $(call Package/python-pyjwt/Default)
  DEPENDS:=+PACKAGE_python2-pyjwt:python2
  VARIANT:=python2
endef

define Package/python2-pyjwt/description
  A Python implementation of RFC 7519.
endef

$(eval $(call Py2Package,python2-pyjwt))
$(eval $(call BuildPackage,python2-pyjwt))
$(eval $(call BuildPackage,python2-pyjwt-src))
