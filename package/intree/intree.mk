################################################################################
#
# intree
#
################################################################################

INTREE_VERSION = 1.0
INTREE_SITE = ./package/intree/src
INTREE_SITE_METHOD = local

define COMPILE_EPOLL
$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define INSTALL_EPOLL
$(INSTALL) -D -m 0755 $(@D)/epoll $(TARGET_DIR)/usr/bin
endef

define INTREE_BUILD_CMDS
$(if $(BR2_PACKAGE_EPOLL),
	$(call COMPILE_EPOLL))
endef

define INTREE_INSTALL_TARGET_CMDS
$(if $(BR2_PACKAGE_EPOLL),
	$(call INSTALL_EPOLL))
endef

$(eval $(generic-package))