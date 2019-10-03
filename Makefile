
ANTLR="antlr-4.7.1-complete.jar"

all:
	java -jar bin/$(ANTLR) -Dlanguage=Java -lib antlr antlr/JavaLexer.g4
	java -jar bin/$(ANTLR) -Dlanguage=Java -lib antlr antlr/JavaParser.g4

.PHONY: clean
clean:
	rm antlr/*.{interp,tokens,java}
