#
# Copyright (C) 2007-2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-gunicorn
PKG_VERSION:=19.9.0
PKG_RELEASE:=2

PYPI_NAME:=gunicorn
PKG_HASH:=fa2662097c66f920f53f70621c6c58ca4a3c4d3434205e608e121b5b3b71f4f3

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/gunicorn/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=WSGI HTTP Server for UNIX
  URL:=https://gunicorn.org
endef

define Package/python2-gunicorn
$(call Package/gunicorn/Default)
  DEPENDS:=+python2
  VARIANT:=python2
endef

define Package/python2-gunicorn/description
    WSGI HTTP Server for UNIX (libraries)
endef

define Py2Package/python2-gunicorn/filespec
+|$(PYTHON2_PKG_DIR)
-|$(PYTHON2_PKG_DIR)/gunicorn/workers/_gaiohttp.py
endef

# Make sure that the binaries are not installed with the libraries
# That means adding some empty Py2Package/gunicorn/install rules
define Py2Package/python2-gunicorn/install
	:
endef

define Package/gunicorn2
$(call Package/gunicorn/Default)
  DEPENDS:=+python2 +python2-pkg-resources +python2-gunicorn
endef

define Package/gunicorn2/description
    WSGI HTTP Server for UNIX (daemon)
endef

define Package/gunicorn2/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) \
		$(PKG_INSTALL_DIR)/usr/bin/gunicorn \
		$(1)/usr/bin/gunicorn2
	$(INSTALL_BIN) \
		$(PKG_INSTALL_DIR)/usr/bin/gunicorn_paster \
		$(1)/usr/bin/gunicorn2_paster
	$(call Py2Shebang,$(1)/usr/bin/*)
endef

$(eval $(call Py2Package,python2-gunicorn))
$(eval $(call BuildPackage,python2-gunicorn))
$(eval $(call BuildPackage,python2-gunicorn-src))
$(eval $(call BuildPackage,gunicorn2))
