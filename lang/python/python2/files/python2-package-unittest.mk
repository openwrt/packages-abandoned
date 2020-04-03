#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-unittest
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) unittest module
  DEPENDS:=+python2-light
endef

$(eval $(call Py2BasePackage,python2-unittest, \
	/usr/lib/python$(PYTHON2_VERSION)/unittest \
))
