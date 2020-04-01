#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-requests-oauthlib
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=requests-oauthlib
PKG_HASH:=b4261601a71fd721a8bd6d7aa1cc1d6a8a93b4a9f5e96626f8e4d91e8beeaa6a

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-requests-oauthlib/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OAuthlib auth for Requests
  URL:=https://github.com/requests/requests-oauthlib
endef

define Package/python2-requests-oauthlib
  $(call Package/python-requests-oauthlib/Default)
  DEPENDS:= \
	+PACKAGE_python2-requests-oauthlib:python2 \
	+PACKAGE_python2-requests-oauthlib:python2-oauthlib \
	+PACKAGE_python2-requests-oauthlib:python2-requests
  VARIANT:=python2
endef

define Package/python2-requests-oauthlib/description
  This python package provides first-class OAuth library support
  for Requests.
endef

$(eval $(call Py2Package,python2-requests-oauthlib))
$(eval $(call BuildPackage,python2-requests-oauthlib))
$(eval $(call BuildPackage,python2-requests-oauthlib-src))
