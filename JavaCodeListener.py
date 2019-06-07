from generated.JavaListener import JavaListener
from generated.JavaParser import JavaParser


class JavaCodeListener(JavaListener):
    def __init__(self, out_put) -> None:
        self.out_put = out_put
        super().__init__()

    def enterClass_def(self, ctx: JavaParser.Class_defContext):
        self.out_put.write("class "+ str(ctx.WORD())+":\n")



