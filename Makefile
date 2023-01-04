#NEWROOT=./...

help:
	@echo 'usage: run | initrd'
	
run: activate-scripts
	
	#@echo $(NEWROOT)
	
activate-scripts:
	@chmod +x ./scripts/*
	
reinit-self:
	@cd ..; ./launch-initrdCreator.sh
