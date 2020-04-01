#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-qrcode
PKG_VERSION:=6.1
PKG_RELEASE:=2

PYPI_NAME:=qrcode
PKG_HASH:=505253854f607f2abf4d16092c61d4e9d511a3b4392e60bff957a68592b04369

PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-qrcode/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=QR Code image generator
  URL:=https://github.com/lincolnloop/python-qrcode
endef

define Package/python2-qrcode
$(call Package/python-qrcode/Default)
  DEPENDS:= \
	+PACKAGE_python2-qrcode:python2 \
	+PACKAGE_python2-qrcode:python2-setuptools \
	+PACKAGE_python2-qrcode:python2-six \
	+PACKAGE_python2-qrcode:python2-pillow
  VARIANT:=python2
endef

define Package/python2-qrcode/description
  Pure python QR Code generator
endef

$(eval $(call Py2Package,python2-qrcode))
$(eval $(call BuildPackage,python2-qrcode))
$(eval $(call BuildPackage,python2-qrcode-src))
