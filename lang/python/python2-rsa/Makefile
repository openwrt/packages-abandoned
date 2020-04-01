include $(TOPDIR)/rules.mk

PKG_NAME:=python2-rsa
PKG_VERSION:=4.0
PKG_RELEASE:=1

PYPI_NAME:=rsa
PKG_HASH:=1a836406405730121ae9823e19c6e806c62bbad73f890574fff50efa4122c487

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-rsa/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=rsa
  URL:=https://stuvel.eu/rsa
endef

define Package/python2-rsa
$(call Package/python-rsa/Default)
  DEPENDS:=+PACKAGE_python2-rsa:python2 +PACKAGE_python2-rsa:python2-pyasn1
  VARIANT:=python2
endef

define Package/python2-rsa/description
  Is a pure-Python RSA implementation. It supports encryption and decryption,
  signing and verifying signatures, and key generation according to PKCS#1 version 1.5.
  It can be used as a Python library as well as on the commandline. 
endef

$(eval $(call Py2Package,python2-rsa))
$(eval $(call BuildPackage,python2-rsa))
$(eval $(call BuildPackage,python2-rsa-src))
