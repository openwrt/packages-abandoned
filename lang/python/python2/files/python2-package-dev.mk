#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-dev
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) development files
  DEPENDS:=+python2 +python2-lib2to3
endef

define Py2Package/python2-dev/install
	$(INSTALL_DIR) $(1)/usr/bin $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/python$(PYTHON2_VERSION)-config $(1)/usr/bin
	$(LN) python$(PYTHON2_VERSION)-config $(1)/usr/bin/python2-config
	$(LN) python$(PYTHON_VERSION)/config/libpython$(PYTHON2_VERSION).a $(1)/usr/lib/
endef

$(eval $(call Py2BasePackage,python2-dev, \
	/usr/lib/python$(PYTHON_VERSION)/config \
	/usr/include/python$(PYTHON_VERSION) \
	/usr/lib/pkgconfig \
	, \
	DO_NOT_ADD_TO_PACKAGE_DEPENDS \
))
