#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-rcssmin
PKG_VERSION:=1.0.6
PKG_RELEASE:=1

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>, Eneas U de Queiroz <cote2004-github@yahoo.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=rcssmin
PKG_HASH:=ca87b695d3d7864157773a61263e5abb96006e9ff0e021eff90cbe0e1ba18270

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-rcssmin/Default
    SUBMENU:=Python
    SECTION:=lang
    CATEGORY:=Languages
    TITLE:=Fast CSS minifier for Python
    URL:=http://opensource.perlig.de/rcssmin/
endef

define Package/python2-rcssmin
    $(call Package/python-rcssmin/Default)
    DEPENDS:= \
	+PACKAGE_python2-rcssmin:python2-light \
	+PACKAGE_python2-rcssmin:python2-codecs
    VARIANT:=python2
endef

define Package/python2-rcssmin/description
    This module is a re-implementation aiming for speed instead of maximum compression,
    so it can be used at runtime (rather than during a preprocessing step).
    RCSSmin does syntactical compression only (removing spaces, comments and possibly
    semicolons). It does not provide semantic compression (like removing empty blocks,
    collapsing redundant properties etc).
endef

$(eval $(call Py2Package,python2-rcssmin))
$(eval $(call BuildPackage,python2-rcssmin))
$(eval $(call BuildPackage,python2-rcssmin-src))
