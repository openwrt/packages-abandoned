#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-bcrypt
PKG_VERSION:=3.1.7
PKG_RELEASE:=1

PYPI_NAME:=bcrypt
PKG_HASH:=0b0069c752ec14172c5f78208f1863d7ad6755a6fae6fe76ec2c80d13be41e42

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=libffi/host
HOST_PYTHON2_PACKAGE_BUILD_DEPENDS:="cffi>=1.1"

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/bcrypt/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Modern password hashing
  URL:=https://github.com/pyca/bcrypt/
endef

define Package/python2-bcrypt
$(call Package/bcrypt/Default)
  DEPENDS:= \
	+PACKAGE_python2-bcrypt:python2 \
	+PACKAGE_python2-bcrypt:python2-cffi \
	+PACKAGE_python2-bcrypt:python2-six
  VARIANT:=python2
endef

define Package/python2-bcrypt/description
  Good password hashing for your software and your servers.
endef

$(eval $(call Py2Package,python2-bcrypt))
$(eval $(call BuildPackage,python2-bcrypt))
$(eval $(call BuildPackage,python2-bcrypt-src))
