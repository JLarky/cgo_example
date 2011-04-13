#
#
#

include $(GOROOT)/src/Make.inc

TARG=main

CGOFILES=c_go.go
CGO_LDFLAGS=
CLEANERFILES+=c_go

include $(GOROOT)/src/Make.pkg

all: c_go

%: install %.go
	$(GC) -I$(GOROOT)/pkg/linux_386 $*.go
	$(LD) -o $@ $*.$O
