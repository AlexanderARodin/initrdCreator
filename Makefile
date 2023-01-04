#NEWROOT=./...

help:
	@echo 'usage: run | initrd'
	
run: activate-scripts
	
	#@echo $(NEWROOT)
	
activate-scripts:
	@chmod +x ./scripts/*
	
reload-self:
	@cd ..; ./initrdCreator/scripts/reload-self.sh
