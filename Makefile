help:
	@echo "usage: run | initrd | reload-self | activate-scripts"
	
run: activate-scripts
	@./scripts/run-chroot.sh

	
	
reload-self: activate-scripts
	@cd ..; pwd; ./initrdCreator/scripts/reload-self.sh

activate-scripts:
	@chmod +x ./scripts/*
	@ln -srfv ../config $(PWD)/.config






