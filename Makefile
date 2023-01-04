#NEWROOT=./...

help:
	@echo 'usage: run | initrd'
	
run: activate-scripts
	
	#@echo $(NEWROOT)
	
	
reload-self: activate-scripts
	@cd ..; ./initrdCreator/scripts/reload-self.sh

activate-scripts:
	@chmod +x ./scripts/*
