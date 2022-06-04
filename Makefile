all: set_all

set_all: ninja make cmake_bear hub

ninja:
	cat $@.txt |xp push -n $@
make:
	cat $@.txt |xp push -n $@

cmake_bear:
	cat $@.txt |xp push -n $@
hub:
	cat $@.txt |xp push -n $@

clean:
	xp rm s-hub
	xp rm s-cmake_bear
	xp rm s-make
	xp rm s-ninja
