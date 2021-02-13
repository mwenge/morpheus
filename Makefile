.PHONY: all clean run

D64_IMAGE = "bin/morpheus.d64"
X64 = x64
X64SC = x64sc
C1541 = c1541

all: clean d64 run
original: clean d64_orig run_orig

morpheus.prg: src/morpheus.asm src/data.asm
	64tass -Wall -Wno-implied-reg --cbm-prg -o bin/mp.prg -L bin/list-co1.txt -l bin/labels.txt src/morpheus.asm
	exomizer sfx 0x0900 bin/mp.prg -n -o bin/morpheus.prg
	md5sum bin/mp.prg bin/mp-bench.prg

d64: morpheus.prg
	$(C1541) -format "morpheus,rq" d64 $(D64_IMAGE)
	$(C1541) $(D64_IMAGE) -write bin/morpheus.prg "morpheus"
	$(C1541) $(D64_IMAGE) -list

run: d64
	$(X64) -verbose $(D64_IMAGE)

run: d64

clean:
	-rm $(D64_IMAGE)
	-rm bin/morpheus.prg
	-rm bin/mp.prg
	-rm bin/*.txt
