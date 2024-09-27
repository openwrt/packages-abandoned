#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-ctypes
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) ctypes module
  DEPENDS:=+python2-light
endef

TARGET_LDFLAGS+=-L$(STAGING_DIR)/usr/lib -L$(STAGING_DIR)/lib

$(eval $(call Py2BasePackage,python2-ctypes, \
	/usr/lib/python$(PYTHON2_VERSION)/ctypes \
	/usr/lib/python$(PYTHON2_VERSION)/lib-dynload/_ctypes.so \
	/usr/lib/python$(PYTHON2_VERSION)/lib-dynload/_ctypes_test.so \
))
