
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

import java.io.IOException;

public class Test {
    public static void main(String[] args) throws IOException {
        JavaLexer lexer = new JavaLexer(CharStreams.fromFileName(args[0]));
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        JavaParser parser = new JavaParser(tokens);
        JavaParser.CompilationUnitContext tree = parser.compilationUnit();

        System.out.println(tree.getChild(0).toStringTree());
    }
}
