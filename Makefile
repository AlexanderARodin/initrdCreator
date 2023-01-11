#Makefile

help:
	@echo 'usage: config | runINIT | run-shell | install | processing | insert-init | busybox | newroot | clean | reload-self | activate-scripts'
config:
	@vi .config
	
# #######################################
# testing
run-shell: activate-scripts
	@./scripts/xxxx-chroot-run-shell.sh
run-mounted: activate-scripts
	@./scripts/xxxx-chroot-run-mounted.sh
	
# #######################################
# main chain
install: activate-scripts processing
	@echo '[MAKE INSTALL]'
	@./scripts/xx90-initrd-producing.sh
	
processing: activate-scripts insert-init
	@echo '[MAKE PROCESSING]'
	@./scripts/xx50-processing.sh

insert-init: activate-scripts busybox
	@echo '[MAKE INSERTING INIT]'
	@./scripts/xx30-install-init.sh
	
busybox: activate-scripts newroot
	@echo '[MAKE BUSYBOX]'
	@./scripts/xx20-install-busybox.sh

newroot: activate-scripts clean
	@echo '[MAKE NEWROOT]'
	@./scripts/xx10-create-minimal-root.sh
	
clean: activate-scripts
	@echo '[MAKE CLEAN]'
	@./scripts/xx00-wipeoff-newroot.sh

activate-scripts:
	@chmod +x ./scripts/*.sh
	
	
# #######################################
# others

reload-self: activate-scripts
	@./scripts/xxxx-reload-self.sh


