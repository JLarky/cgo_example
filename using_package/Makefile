PROG=using

include $(GOROOT)/src/Make.inc

all: $(PROG)

$(PROG): _obj/$(PROG).$O
	$(LD) -o $@ $<

_obj:
	mkdir -p _obj

_obj/%.$O: %.go | _obj
	$(GC) -o $@ $<

clean:
	rm -rf _obj $(PROG) *~