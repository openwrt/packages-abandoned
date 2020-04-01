include $(TOPDIR)/rules.mk

PKG_NAME:=python2-s3transfer
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=s3transfer
PKG_HASH:=f23d5cb7d862b104401d9021fc82e5fa0e0cf57b7660a1331425aab0c691d021

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-s3transfer/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=s3transfer
  URL:=https://github.com/boto/s3transfer
endef

define Package/python2-s3transfer
$(call Package/python-s3transfer/Default)
  DEPENDS:= \
	+PACKAGE_python2-s3transfer:python2 \
	+PACKAGE_python2-s3transfer:python2-botocore \
	+PACKAGE_python2-s3transfer:python2-futures
  VARIANT:=python2
endef

define Package/python2-s3transfer/description
S3transfer is a Python library for managing Amazon S3 transfers.
endef

$(eval $(call Py2Package,python2-s3transfer))
$(eval $(call BuildPackage,python2-s3transfer))
$(eval $(call BuildPackage,python2-s3transfer-src))
