include $(TOPDIR)/rules.mk

PKG_NAME:=python2-docutils
PKG_VERSION:=0.14
PKG_RELEASE:=1

PYPI_NAME:=docutils
PKG_HASH:=51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-docutils/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=docutils
  URL:=http://docutils.sourceforge.net
endef

define Package/python2-docutils
$(call Package/python-docutils/Default)
  DEPENDS:=+PACKAGE_python2-docutils:python2
  VARIANT:=python2
endef

define Package/python2-docutils/description
Docutils is a modular system for processing documentation into useful formats,
such as HTML, XML, and LaTeX. For input Docutils supports reStructuredText,
an easy-to-read, what-you-see-is-what-you-get plaintext markup syntax.
endef

PYTHON2_PKG_SETUP_ARGS:=

$(eval $(call Py2Package,python2-docutils))
$(eval $(call BuildPackage,python2-docutils))
$(eval $(call BuildPackage,python2-docutils-src))
