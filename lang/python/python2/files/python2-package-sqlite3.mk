#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-sqlite3
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) sqlite3 module
  DEPENDS:=+python2-light +libsqlite3
endef

$(eval $(call Py2BasePackage,python2-sqlite3, \
	/usr/lib/python$(PYTHON2_VERSION)/lib-dynload/_sqlite3.so \
	/usr/lib/python$(PYTHON2_VERSION)/sqlite3 \
))
