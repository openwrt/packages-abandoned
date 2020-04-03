#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python2-ncurses
$(call Package/python2/Default)
  TITLE:=Python $(PYTHON2_VERSION) ncurses module
  DEPENDS:=+python2-light +libncurses
endef

$(eval $(call Py2BasePackage,python2-ncurses, \
	/usr/lib/python$(PYTHON2_VERSION)/curses \
	/usr/lib/python$(PYTHON2_VERSION)/lib-dynload/_curses.so \
	/usr/lib/python$(PYTHON2_VERSION)/lib-dynload/_curses_panel.so \
))
