#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-oauthlib
PKG_VERSION:=3.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=oauthlib
PKG_HASH:=bee41cc35fcca6e988463cacc3bcb8a96224f470ca547e697b604cc697b2f889

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-oauthlib/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OAuth request-signing logic for Python
  URL:=https://github.com/oauthlib/oauthlib
endef

define Package/python2-oauthlib
  $(call Package/python-oauthlib/Default)
  DEPENDS:=+PACKAGE_python2-oauthlib:python2-light
  VARIANT:=python2
endef

define Package/python2-oauthlib/description
  A generic, spec-compliant, thorough implementation of the OAuth request-signing
  logic for Python
endef

$(eval $(call Py2Package,python2-oauthlib))
$(eval $(call BuildPackage,python2-oauthlib))
$(eval $(call BuildPackage,python2-oauthlib-src))
