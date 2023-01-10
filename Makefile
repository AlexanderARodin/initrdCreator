#Makefile

help:
	@echo 'usage: runINIT | run-shell | install | configuration | busybox | newroot | clean | reload-self | activate-scripts'
	
# #######################################
# testing 
run-shell: activate-scripts
	@./scripts/xxxx-run-chroot.sh
runINIT: activate-scripts
	@./scripts/xxxx-run-init-chroot.sh /bin/sh
	
# #######################################
# main chain
install: activate-scripts configuration
	@echo '[MAKE INSTALL]'
	@./scripts/xx90-initrd-producing.sh
	
configuration: activate-scripts busybox
	@echo '[MAKE CONFIGURATION]'
	@./scripts/xx40-configuration.sh

busybox: activate-scripts newroot
	@echo '[MAKE BUSYBOX]'
	@./scripts/xx30-install-busybox.sh

newroot: activate-scripts clean
	@echo '[MAKE NEWROOT]'
	@./scripts/xx20-create-newroot.sh
	
clean: activate-scripts
	@echo '[MAKE CLEAN]'
	@./scripts/xx00-wipeoff-newroot.sh

activate-scripts:
	@chmod +x ./scripts/*.sh
	
	
# #######################################
# others
pull:
	@git pull

reload-self: activate-scripts
	@./scripts/xxxx-reload-self.sh


