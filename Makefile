#
#
#

include $(GOROOT)/src/Make.inc

TARG=github.com/JLarky/cgo_example

CGOFILES=cgo_example.go
CGO_LDFLAGS=
CLEANERFILES+=cgo_example

include $(GOROOT)/src/Make.pkg

all:

%: install %.go
	$(GC) -I$(GOROOT)/pkg/linux_386 $*.go
	$(LD) -o $@ $*.$O
