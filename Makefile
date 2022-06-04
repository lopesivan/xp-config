

cmake_bear:
	cat $@.txt |xp push -n $@
hub:
	cat $@.txt |xp push -n $@

clean:
	xp rm s-hub
	xp rm s-cmake_bear
