include $(TOPDIR)/rules.mk

PKG_NAME:=python2-futures
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PYPI_NAME:=futures
PKG_HASH:=9ec02aa7d674acb8618afb127e27fde7fc68994c0437ad759fa094a574adb265

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python2-futures
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=futures
  URL:=https://github.com/agronholm/pythonfutures
  DEPENDS:=+python2
  VARIANT:=python2
endef

define Package/python2-futures/description
  This is a backport of the concurrent.futures standard library module to Python 2.
  It should not be installed on Python 3, although there should be no harm in doing so,
  as the standard library takes precedence over third party libraries.
endef

$(eval $(call Py2Package,python2-futures))
$(eval $(call BuildPackage,python2-futures))
$(eval $(call BuildPackage,python2-futures-src))
