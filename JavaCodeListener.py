from generated.JavaListener import JavaListener
from generated.JavaParser import JavaParser


class JavaCodeListener(JavaListener):

    def __init__(self, out_put) -> None:
        self.out_put = out_put
        super().__init__()
        self.indentation = ''

    def enterClass_def(self, ctx: JavaParser.Class_defContext):
        self.out_put.write('class ' + str(ctx.WORD())+':\n')
        self.increase_indentation()

    def enterMethod(self, ctx: JavaParser.MethodContext):
        self.indent()
        index_of_word = 0

        if ctx.STATIC():
            method = '@staticmethod\ndef ' + str(ctx.WORD(0)) + '('
        else:
            method = 'def ' + str(ctx.WORD(index_of_word)) + '(self'

        index_of_word += 1
        while ctx.WORD(index_of_word):
            method += ', ' + str(ctx.WORD(index_of_word))
            index_of_word += 1

        method += '):\n'
        self.out_put.write(method)
        self.increase_indentation()

    def exitMethod(self, ctx: JavaParser.MethodContext):
        self.out_put.write('\n')
        self.decrease_indentation()

    def indent(self):
        self.out_put.write(self.indentation)

    def increase_indentation(self):
        self.indentation += '   '

    def decrease_indentation(self):
        if len(self.indentation > 0):
            self.indentation = self.indentation[:-4]



