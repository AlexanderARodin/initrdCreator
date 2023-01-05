#Makefile

help:
	@echo 'usage: run | install | configuration | busybox | newroot | clean | reload-self | activate-scripts'
	
run-shell-only: activate-scripts configuration
	@./scripts/run-sh-chroot.sh
runinit: activate-scripts configuration
	@./scripts/run-init-chroot.sh
	
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
