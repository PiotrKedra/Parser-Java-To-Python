import sys
from antlr4 import *

from JavaCodeListener import JavaCodeListener
from JavaLexer import JavaLexer
from JavaParser import JavaParser


input = FileStream('test.txt')
lexer = JavaLexer(input)
stream = CommonTokenStream(lexer)
parser = JavaParser(stream)
tree = parser.body()

output = open("output.py", "w")

htmlChat = JavaCodeListener(output)
walker = ParseTreeWalker()
walker.walk(htmlChat, tree)
output.close()


