include $(TOPDIR)/rules.mk

PKG_NAME:=python2-jmespath
PKG_VERSION:=0.9.3
PKG_RELEASE:=1

PYPI_NAME:=jmespath
PKG_HASH:=6a81d4c9aa62caf061cb517b4d9ad1dd300374cd4706997aff9cd6aedd61fc64

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-jmespath/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=jmespath
  URL:=https://github.com/jmespath/jmespath.py
endef

define Package/python2-jmespath
$(call Package/python-jmespath/Default)
  DEPENDS:=+PACKAGE_python2-jmespath:python2
  VARIANT:=python2
endef

define Package/python2-jmespath/description
  JMESPath (pronounced “james path”) allows you to declaratively specify how to extract
  elements from a JSON document.
endef

$(eval $(call Py2Package,python2-jmespath))
$(eval $(call BuildPackage,python2-jmespath))
$(eval $(call BuildPackage,python2-jmespath-src))
