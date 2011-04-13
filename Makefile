# Copyright 2010 The Go Authors.  All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

include ~/go/src/Make.inc

TARG=cgo_example

CGOFILES=\
	cgo_example.go\

CGO_OFILES=\
	example.o\

CLEANFILES+=main

include ~/go/src/Make.pkg

main: install main.go
	$(GC) main.go
	$(LD) -o $@ main.$O
