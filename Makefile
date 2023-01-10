#Makefile

help:
	@echo 'usage: config | runINIT | run-shell | install | processing | busybox | newroot | clean | reload-self | activate-scripts'
config:
	@vi .config
	
# #######################################
# testing 
run-shell: activate-scripts busybox
	@./scripts/xxxx-run-chroot.sh
runINIT: activate-scripts busybox
	@./scripts/xxxx-run-pseudoINIT-chroot.sh /bin/sh
	
# #######################################
# main chain
install: activate-scripts processing
	@echo '[MAKE INSTALL]'
	@./scripts/xx90-initrd-producing.sh
	
processing: activate-scripts busybox
	@echo '[MAKE CONFIGURATION]'
	#@./scripts/xx40-configuration.sh

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
pull:
	@git pull

reload-self: activate-scripts
	@./scripts/iiii-reload-self.sh


