#NEWROOT=./...

help:
	@echo 'usage: run | initrd'
	
run: activate-scripts
	
	#@echo $(NEWROOT)
	
activate-scripts:
	@chmod +x ./scripts/*
	
reinit-self:
	@../launch-initCreator.sh
