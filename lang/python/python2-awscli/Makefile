include $(TOPDIR)/rules.mk

PKG_NAME:=python2-awscli
PKG_VERSION:=1.16.75
PKG_RELEASE:=1

PYPI_NAME:=awscli
PKG_HASH:=8d96ec0de325ea8271cc6aa95b7392bbf548ec4aabd3ffbcdc0619b64edd4a45

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-awscli/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=awscli
  URL:=https://github.com/aws/aws-cli
endef

define Package/python2-awscli
$(call Package/python-awscli/Default)
  DEPENDS:=+PACKAGE_python2-awscli:python2 \
	+PACKAGE_python2-awscli:python2-yaml \
	+PACKAGE_python2-awscli:python2-pyasn1 \
	+PACKAGE_python2-awscli:python2-botocore \
	+PACKAGE_python2-awscli:python2-rsa \
	+PACKAGE_python2-awscli:python2-colorama \
	+PACKAGE_python2-awscli:python2-docutils \
	+PACKAGE_python2-awscli:python2-s3transfer
  VARIANT:=python2
endef

define Package/python2-awscli/description
This package provides a unified command line interface to Amazon Web Services.
endef

$(eval $(call Py2Package,python2-awscli))
$(eval $(call BuildPackage,python2-awscli))
$(eval $(call BuildPackage,python2-awscli-src))
