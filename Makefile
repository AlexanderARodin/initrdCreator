#Makefile

help:
	@echo 'usage: runINIT | run-shell | install | configuration | busybox | newroot | clean | reload-self | activate-scripts'
	
runner: activate-scripts
	@./scripts/run-init-chroot.sh /bin/sh

run-shell: activate-scripts configuration
	@./scripts/run-chroot.sh
runINIT: activate-scripts configuration
	@./scripts/run-init-chroot.sh /bin/sh
	
install: activate-scripts configuration
	@./scripts/initrd-producing.sh
	
configuration: activate-scripts busybox
	@./scripts/configuration.sh

busybox: activate-scripts newroot
	@./scripts/install-busybox.sh

newroot: pull activate-scripts clean
	@./scripts/create-newroot.sh

pull:
	@git pull

clean: activate-scripts
	@./scripts/delete-newroot.sh


reload-self: activate-scripts
	@./scripts/reload-self.sh


activate-scripts:
	@chmod +x ./scripts/*
	@ln -srfv ../config $(PWD)/.config
