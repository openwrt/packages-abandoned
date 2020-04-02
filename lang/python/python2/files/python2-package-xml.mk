#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-xml
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) xml libs
  DEPENDS:=+python2-light +libexpat
endef

$(eval $(call Py2BasePackage,python2-xml, \
	/usr/lib/python$(PYTHON2_VERSION)/xml \
	/usr/lib/python$(PYTHON2_VERSION)/xmllib.py \
	/usr/lib/python$(PYTHON2_VERSION)/xmlrpclib.py \
	/usr/lib/python$(PYTHON2_VERSION)/lib-dynload/_elementtree.so \
	/usr/lib/python$(PYTHON2_VERSION)/lib-dynload/pyexpat.so \
))
