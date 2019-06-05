from JavaListener import JavaListener
from JavaParser import JavaParser


class JavaCodeListener(JavaListener):
    def __init__(self, out_put) -> None:
        self.out_put = out_put
        super().__init__()

