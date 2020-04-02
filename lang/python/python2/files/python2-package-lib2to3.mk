#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-lib2to3
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) lib2to3 module
  DEPENDS:=+python2
endef

$(eval $(call Py2BasePackage,python2-lib2to3, \
	/usr/lib/python$(PYTHON2_VERSION)/lib2to3 \
	, \
	DO_NOT_ADD_TO_PACKAGE_DEPENDS \
))
