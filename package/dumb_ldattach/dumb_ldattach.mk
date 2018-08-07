################################################################################
#
# dumb_ldattach
#
################################################################################

DUMB_LDATTACH_VERSION = v1.0.0
DUMB_LDATTACH_SITE = $(call github,fhunleth,dumb_ldattach,$(DUMB_LDATTACH_VERSION))
DUMB_LDATTACH_LICENSE = GPL-2.0+
DUMB_LDATTACH_LICENSE_FILES = LICENSE
DUMB_LDATTACH_AUTORECONF = YES

$(eval $(autotools-package))
