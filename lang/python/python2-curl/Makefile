#
# This is free software, licensed under the GNU General Public License v2.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python2-pycurl
PKG_VERSION:=7.43.0.5
PKG_RELEASE:=1

PYPI_NAME:=pycurl
PKG_HASH:=ec7dd291545842295b7b56c12c90ffad2976cc7070c98d7b1517b7b6cd5994b3

PKG_MAINTAINER:=Waldemar Konik <informatyk74@interia.pl>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING-LGPL

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-curl/Default
  CATEGORY:=Languages
  SECTION:=lang
  SUBMENU:=Python
  TITLE:=Python module interface to the cURL library
  URL:=http://pycurl.io/
  DEPENDS:=+libcurl
endef

define Package/python2-curl
$(call Package/python-curl/Default)
  DEPENDS+=+PACKAGE_python2-curl:python2
  VARIANT:=python2
endef

define Package/python2-curl/description
PycURL is a Python interface to libcurl, the multiprotocol file transfer library.
endef

PYTHON2_PKG_SETUP_ARGS:=

ifdef CONFIG_LIBCURL_OPENSSL
  PYTHON2_PKG_SETUP_ARGS+=--with-openssl
endif

ifdef CONFIG_LIBCURL_GNUTLS
  PYTHON2_PKG_SETUP_ARGS+=--with-gnutls
endif

ifdef CONFIG_LIBCURL_MBEDTLS
  PYTHON2_PKG_SETUP_ARGS+=--with-mbedtls
endif

ifdef CONFIG_LIBCURL_WOLFSSL
  PYTHON2_PKG_SETUP_ARGS+=--with-wolfssl
endif

$(eval $(call Py2Package,python2-curl))
$(eval $(call BuildPackage,python2-curl))
$(eval $(call BuildPackage,python2-curl-src))
