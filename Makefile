
ANTLR=antlr-4.7.1-complete.jar

.PHONY: run
run: Test.class
	java -cp .:bin/$(ANTLR):antlr Test Test.java

Test.class: Test.java antlr/JavaParser.java
	javac -cp .:bin/$(ANTLR):antlr Test.java

antlr/JavaParser.java: antlr/JavaParser.g4 antlr/JavaLexer.g4
	java -jar bin/$(ANTLR) -Dlanguage=Java -lib antlr antlr/JavaLexer.g4
	java -jar bin/$(ANTLR) -Dlanguage=Java -lib antlr -no-listener antlr/JavaParser.g4

.PHONY: clean
clean:
	rm -f antlr/*.{interp,tokens,java,class} *.class
