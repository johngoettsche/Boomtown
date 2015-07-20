Boomtown.exe : UserInterface.u game.u
	unicon -o Boomtown.exe UserInterface.u game.u
	make clean
	
game.u : game.icn UserInterface.u
	unicon -c game.icn
	
UserInterface.u : UserInterface.icn Players.u
	unicon -c UserInterface.icn Players.u
	
Players.u : Players.icn
	unicon -c Players.icn
	
clean :
	rm *.u
