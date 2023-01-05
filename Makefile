#NEWROOT=./...

help:
	@echo 'usage: run | initrd'
	
run: activate-scripts
	
	#@echo $(NEWROOT)
	
	
reload-self: activate-scripts
	@cd ..; pwd; ./initrdCreator/scripts/reload-self.sh
	ln -srfv ../config ($PWD)/.config
	@chmod +x ./scripts/*

activate-scripts:
	@chmod +x ./scripts/*
