#Makefile

help:
	@echo 'usage: runINIT | run-shell | install | configuration | busybox | newroot | clean | reload-self | activate-scripts'
	
run-shell: activate-scripts
	@./scripts/rc-run-chroot.sh
runINIT: activate-scripts
	@./scripts/ri-run-init-chroot.sh /bin/sh
	
install: activate-scripts configuration
	@./scripts/90-initrd-producing.sh
	
configuration: activate-scripts busybox
	@./scripts/40-configuration.sh

busybox: activate-scripts newroot
	@./scripts/30-install-busybox.sh

newroot: pull activate-scripts clean
	@./scripts/20-create-newroot.sh

pull:
	@git pull

clean: activate-scripts
	@./scripts/10-delete-newroot.sh


reload-self: activate-scripts
	@./scripts/as-reload-self.sh


activate-scripts:
	@chmod +x ./scripts/*
	#@ln -srfv ../config $(PWD)/.config
