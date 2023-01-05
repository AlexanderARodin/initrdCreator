#Makefile

help:
	@echo 'usage: run | install | configuration | busybox | newroot | clean | reload-self | activate-scripts'
	
run: activate-scripts configuration
	@./scripts/run-chroot.sh
	
install: activate-scripts configuration
	@./scripts/initrd-producing.sh
	
configuration: activate-scripts busybox
	@./scripts/configuration.sh

busybox: activate-scripts newroot
	@./scripts/install-busybox.sh

newroot: activate-scripts clean
	@./scripts/create-newroot.sh

clean: activate-scripts
	@./scripts/delete-newroot.sh


reload-self: activate-scripts
	@./scripts/reload-self.sh


activate-scripts:
	@chmod +x ./scripts/*
	@ln -srfv ../config $(PWD)/.config
