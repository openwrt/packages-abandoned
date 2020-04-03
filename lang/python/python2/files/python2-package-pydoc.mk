#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-pydoc
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) pydoc module
  DEPENDS:=+python2-light
endef

$(eval $(call Py2BasePackage,python2-pydoc, \
	/usr/lib/python$(PYTHON2_VERSION)/doctest.py \
	/usr/lib/python$(PYTHON2_VERSION)/pydoc.py \
	/usr/lib/python$(PYTHON2_VERSION)/pydoc_data \
))
