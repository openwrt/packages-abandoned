include $(TOPDIR)/rules.mk

PKG_NAME:=python2-botocore
PKG_VERSION:=1.12.66
PKG_RELEASE:=1

PYPI_NAME:=botocore
PKG_HASH:=25c39ecc71356287cf79d66981ec77deca374e28043b19b2f818d48aa34272a1

PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
PKG_LICENSE:=MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python2-package.mk

define Package/python-botocore/Default
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=botocore
  URL:=https://github.com/boto/botocore
endef

define Package/python2-botocore
$(call Package/python-botocore/Default)
  DEPENDS:=+PACKAGE_python2-botocore:python2 \
	+PACKAGE_python2-botocore:python2-urllib3 \
	+PACKAGE_python2-botocore:python2-docutils \
	+PACKAGE_python2-botocore:python2-dateutil \
	+PACKAGE_python2-botocore:python2-jmespath \
	+PACKAGE_python2-botocore:python2-requests
  VARIANT:=python2
endef

define Package/python2-botocore/description
A low-level interface to a growing number of Amazon Web Services.
The botocore package is the foundation for the AWS CLI as well as boto3.
endef

$(eval $(call Py2Package,python2-botocore))
$(eval $(call BuildPackage,python2-botocore))
$(eval $(call BuildPackage,python2-botocore-src))
