




case $INIT in
	MINIMAL)
		sudo cp -rv ./minimal-root/init "$NEWROOT"
		sudo chmod -v +x "$NEWROOT/init"
		;;
	*)
		;;
esac
