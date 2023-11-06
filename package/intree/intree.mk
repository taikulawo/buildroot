################################################################################
#
# intree
#
################################################################################

INTREE_VERSION = 1.0
INTREE_SITE = ./package/intree/
INTREE_SITE_METHOD = local
MAKEOPT = -C $(@D)/src CC="$(TARGET_CC)" LD="$(TARGET_LD)"

define COMPILE_EPOLL
$(MAKE) $(MAKEOPT) epoll
endef

define COMPILE_HELLO
$(MAKE) $(MAKEOPT) hello
endef

define INSTALL_EPOLL
$(INSTALL) -D -m 0755 $(@D)/dist/epoll $(TARGET_DIR)/usr/bin
endef

define INSTALL_HELLO
$(INSTALL) -D -m 0755 $(@D)/dist/hello $(TARGET_DIR)/usr/bin
endef

define INTREE_BUILD_CMDS
$(if $(BR2_PACKAGE_INTREE_EPOLL),
	$(call COMPILE_EPOLL))
$(if $(BR2_PACKAGE_INTREE_HELLO),
	$(call COMPILE_HELLO))
endef

define INTREE_INSTALL_TARGET_CMDS
$(if $(BR2_PACKAGE_INTREE_EPOLL),
	$(call INSTALL_EPOLL))
$(if $(BR2_PACKAGE_INTREE_HELLO),
	$(call INSTALL_HELLO))
endef

$(eval $(generic-package))
