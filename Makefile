all: set_all

set_all: ninja make cmake_bear hub dotnet-console dotnet-solution

dotnet-console:
	cat $@.txt |xp push -n $@
dotnet-solution:
	cat $@.txt |xp push -n $@
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
	xp rm dotnet-console
	xp rm dotnet-solution
