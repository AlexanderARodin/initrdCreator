#NEWROOT=./...

help:
	@echo 'usage: run | initrd'
	
run: activate-scripts
	
	#@echo $(NEWROOT)
	
	
reload-self: activate-scripts
	@cd ..; pwd; ./initrdCreator/scripts/reload-self.sh
	@make activate-scripts

activate-scripts:
	@chmod +x ./scripts/*
	@ln -srfv ../config $(PWD)/.config
