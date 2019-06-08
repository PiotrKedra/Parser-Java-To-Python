from generated.JavaListener import JavaListener
from generated.JavaParser import JavaParser

class JavaCodeListener(JavaListener):

    def __init__(self, out_put) -> None:
        self.out_put = out_put
        super().__init__()
        self.indentation = ''

    def enterClass_def(self, ctx: JavaParser.Class_defContext):
        self.out_put.write('class ')

    def enterWord(self, ctx: JavaParser.WordContext):
        self.out_put.write(str(ctx.WORD()))

    def enterLeft_brace(self, ctx:JavaParser.Left_braceContext):
        self.out_put.write(':\n')
        self.increase_indentation()

    def exitRight_brace(self, ctx: JavaParser.Left_braceContext):
        self.decrease_indentation()

    def enterMethod(self, ctx: JavaParser.MethodContext):
        self.indent()
        self.out_put.write('def ')

    def enterLeft_paren(self, ctx: JavaParser.Left_parenContext):
        if not isinstance(ctx.parentCtx.parentCtx, JavaParser.If_definitionContext):
            self.out_put.write('(')

    def enterRight_paren(self, ctx: JavaParser.Right_parenContext):
        if not isinstance(ctx.parentCtx.parentCtx,JavaParser.If_definitionContext):
            self.out_put.write(')')

    def enterComma_sign(self, ctx:JavaParser.Comma_signContext):
        self.out_put.write(', ')

    def enterAssigne(self, ctx: JavaParser.AssigneContext):
        self.out_put.write('=')

    def enterLine(self, ctx: JavaParser.LineContext):
        self.indent()

    def exitLine(self, ctx: JavaParser.LineContext):
        self.out_put.write('\n')

    # todo extract for digits and different?
    def enterValue(self, ctx: JavaParser.ValueContext):
        for child in ctx.getChildren():
            self.out_put.write(str(child))

    def enterOperator(self, ctx: JavaParser.OperatorContext):
        for child in ctx.getChildren():
            self.out_put.write(str(child))

    # todo what with '(' and ')' in if, while, for : we dont need them
    def enterIf_definition(self, ctx:JavaParser.If_definitionContext):
        self.indent()

    def enterIf_kw(self, ctx:JavaParser.If_kwContext):
        self.out_put.write('if ')

    # todo else not works
    # def enterElse_kw(self, ctx:JavaParser.Else_kwContext):
    #     self.out_put.write('else ')

    def enterWhile_definition(self, ctx:JavaParser.While_definitionContext):
        self.indent()

    def enterWhile_kw(self, ctx:JavaParser.While_kwContext):
        self.out_put.write('while ')

    def enterFor_definition(self, ctx:JavaParser.For_definitionContext):
        self.indent()

    def enterFor_kw(self, ctx:JavaParser.For_kwContext):
        self.out_put.write('for ')

    def enterReturn_kw(self, ctx:JavaParser.Return_kwContext):
        self.out_put.write('return ')

    def enterAnd_operator(self, ctx: JavaParser.And_operatorContext):
        self.out_put.write(" and ")

    def enterOr_operator(self, ctx: JavaParser.Or_operatorContext):
        self.out_put.write(' or ')

    def exitDefinition(self, ctx: JavaParser.DefinitionContext):
        if not isinstance(ctx.parentCtx,JavaParser.DeclarationContext):
            self.out_put.write("=None")

    def indent(self):
        self.out_put.write(self.indentation)

    def increase_indentation(self):
        self.indentation += '    '

    def decrease_indentation(self):
        if len(self.indentation) > 0:
            self.indentation = self.indentation[:-4]



