
ANTLR=antlr-4.7.1-complete.jar
ANTLR_DIR=src/main/antlr

$(ANTLR_DIR)/JavaParser.java: $(ANTLR_DIR)/JavaParser.g4 $(ANTLR_DIR)/JavaLexer.g4
	java -jar bin/$(ANTLR) -Dlanguage=Java -lib $(ANTLR_DIR) $(ANTLR_DIR)/JavaLexer.g4
	java -jar bin/$(ANTLR) -Dlanguage=Java -lib $(ANTLR_DIR) -no-listener \
	     $(ANTLR_DIR)/JavaParser.g4

.PHONY: clean
clean:
	rm -f $(ANTLR_DIR)/*.{interp,tokens,java,class} *.class
