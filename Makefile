SRCS    = $(shell ls *.txt)
TARGETS = $(SRCS:.txt=)
PREFIX  = s-
CLEAN   = $(foreach s,$(SRCS), $(addsuffix $(s:.txt=), $(PREFIX)))

all: $(TARGETS)
clean: $(CLEAN)

$(TARGETS):
	cat $@.txt |xp push -n $@

$(CLEAN):
	xp rm $@
