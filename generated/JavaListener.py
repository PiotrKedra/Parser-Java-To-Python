# Generated from Java.g4 by ANTLR 4.7.2
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .JavaParser import JavaParser
else:
    from JavaParser import JavaParser

# This class defines a complete listener for a parse tree produced by JavaParser.
class JavaListener(ParseTreeListener):

    # Enter a parse tree produced by JavaParser#logical.
    def enterLogical(self, ctx:JavaParser.LogicalContext):
        pass

    # Exit a parse tree produced by JavaParser#logical.
    def exitLogical(self, ctx:JavaParser.LogicalContext):
        pass


    # Enter a parse tree produced by JavaParser#var_type.
    def enterVar_type(self, ctx:JavaParser.Var_typeContext):
        pass

    # Exit a parse tree produced by JavaParser#var_type.
    def exitVar_type(self, ctx:JavaParser.Var_typeContext):
        pass


    # Enter a parse tree produced by JavaParser#value.
    def enterValue(self, ctx:JavaParser.ValueContext):
        pass

    # Exit a parse tree produced by JavaParser#value.
    def exitValue(self, ctx:JavaParser.ValueContext):
        pass


    # Enter a parse tree produced by JavaParser#comperator.
    def enterComperator(self, ctx:JavaParser.ComperatorContext):
        pass

    # Exit a parse tree produced by JavaParser#comperator.
    def exitComperator(self, ctx:JavaParser.ComperatorContext):
        pass


    # Enter a parse tree produced by JavaParser#and_operator.
    def enterAnd_operator(self, ctx:JavaParser.And_operatorContext):
        pass

    # Exit a parse tree produced by JavaParser#and_operator.
    def exitAnd_operator(self, ctx:JavaParser.And_operatorContext):
        pass


    # Enter a parse tree produced by JavaParser#or_operator.
    def enterOr_operator(self, ctx:JavaParser.Or_operatorContext):
        pass

    # Exit a parse tree produced by JavaParser#or_operator.
    def exitOr_operator(self, ctx:JavaParser.Or_operatorContext):
        pass


    # Enter a parse tree produced by JavaParser#logic_operator.
    def enterLogic_operator(self, ctx:JavaParser.Logic_operatorContext):
        pass

    # Exit a parse tree produced by JavaParser#logic_operator.
    def exitLogic_operator(self, ctx:JavaParser.Logic_operatorContext):
        pass


    # Enter a parse tree produced by JavaParser#operator.
    def enterOperator(self, ctx:JavaParser.OperatorContext):
        pass

    # Exit a parse tree produced by JavaParser#operator.
    def exitOperator(self, ctx:JavaParser.OperatorContext):
        pass


    # Enter a parse tree produced by JavaParser#word.
    def enterWord(self, ctx:JavaParser.WordContext):
        pass

    # Exit a parse tree produced by JavaParser#word.
    def exitWord(self, ctx:JavaParser.WordContext):
        pass


    # Enter a parse tree produced by JavaParser#assign.
    def enterAssign(self, ctx:JavaParser.AssignContext):
        pass

    # Exit a parse tree produced by JavaParser#assign.
    def exitAssign(self, ctx:JavaParser.AssignContext):
        pass


    # Enter a parse tree produced by JavaParser#exclamtion.
    def enterExclamtion(self, ctx:JavaParser.ExclamtionContext):
        pass

    # Exit a parse tree produced by JavaParser#exclamtion.
    def exitExclamtion(self, ctx:JavaParser.ExclamtionContext):
        pass


    # Enter a parse tree produced by JavaParser#plus.
    def enterPlus(self, ctx:JavaParser.PlusContext):
        pass

    # Exit a parse tree produced by JavaParser#plus.
    def exitPlus(self, ctx:JavaParser.PlusContext):
        pass


    # Enter a parse tree produced by JavaParser#minus.
    def enterMinus(self, ctx:JavaParser.MinusContext):
        pass

    # Exit a parse tree produced by JavaParser#minus.
    def exitMinus(self, ctx:JavaParser.MinusContext):
        pass


    # Enter a parse tree produced by JavaParser#left_paren.
    def enterLeft_paren(self, ctx:JavaParser.Left_parenContext):
        pass

    # Exit a parse tree produced by JavaParser#left_paren.
    def exitLeft_paren(self, ctx:JavaParser.Left_parenContext):
        pass


    # Enter a parse tree produced by JavaParser#right_paren.
    def enterRight_paren(self, ctx:JavaParser.Right_parenContext):
        pass

    # Exit a parse tree produced by JavaParser#right_paren.
    def exitRight_paren(self, ctx:JavaParser.Right_parenContext):
        pass


    # Enter a parse tree produced by JavaParser#return_kw.
    def enterReturn_kw(self, ctx:JavaParser.Return_kwContext):
        pass

    # Exit a parse tree produced by JavaParser#return_kw.
    def exitReturn_kw(self, ctx:JavaParser.Return_kwContext):
        pass


    # Enter a parse tree produced by JavaParser#if_kw.
    def enterIf_kw(self, ctx:JavaParser.If_kwContext):
        pass

    # Exit a parse tree produced by JavaParser#if_kw.
    def exitIf_kw(self, ctx:JavaParser.If_kwContext):
        pass


    # Enter a parse tree produced by JavaParser#else_kw.
    def enterElse_kw(self, ctx:JavaParser.Else_kwContext):
        pass

    # Exit a parse tree produced by JavaParser#else_kw.
    def exitElse_kw(self, ctx:JavaParser.Else_kwContext):
        pass


    # Enter a parse tree produced by JavaParser#right_brace.
    def enterRight_brace(self, ctx:JavaParser.Right_braceContext):
        pass

    # Exit a parse tree produced by JavaParser#right_brace.
    def exitRight_brace(self, ctx:JavaParser.Right_braceContext):
        pass


    # Enter a parse tree produced by JavaParser#left_brace.
    def enterLeft_brace(self, ctx:JavaParser.Left_braceContext):
        pass

    # Exit a parse tree produced by JavaParser#left_brace.
    def exitLeft_brace(self, ctx:JavaParser.Left_braceContext):
        pass


    # Enter a parse tree produced by JavaParser#class_kw.
    def enterClass_kw(self, ctx:JavaParser.Class_kwContext):
        pass

    # Exit a parse tree produced by JavaParser#class_kw.
    def exitClass_kw(self, ctx:JavaParser.Class_kwContext):
        pass


    # Enter a parse tree produced by JavaParser#static_kw.
    def enterStatic_kw(self, ctx:JavaParser.Static_kwContext):
        pass

    # Exit a parse tree produced by JavaParser#static_kw.
    def exitStatic_kw(self, ctx:JavaParser.Static_kwContext):
        pass


    # Enter a parse tree produced by JavaParser#for_kw.
    def enterFor_kw(self, ctx:JavaParser.For_kwContext):
        pass

    # Exit a parse tree produced by JavaParser#for_kw.
    def exitFor_kw(self, ctx:JavaParser.For_kwContext):
        pass


    # Enter a parse tree produced by JavaParser#while_kw.
    def enterWhile_kw(self, ctx:JavaParser.While_kwContext):
        pass

    # Exit a parse tree produced by JavaParser#while_kw.
    def exitWhile_kw(self, ctx:JavaParser.While_kwContext):
        pass


    # Enter a parse tree produced by JavaParser#semi_sign.
    def enterSemi_sign(self, ctx:JavaParser.Semi_signContext):
        pass

    # Exit a parse tree produced by JavaParser#semi_sign.
    def exitSemi_sign(self, ctx:JavaParser.Semi_signContext):
        pass


    # Enter a parse tree produced by JavaParser#comma_sign.
    def enterComma_sign(self, ctx:JavaParser.Comma_signContext):
        pass

    # Exit a parse tree produced by JavaParser#comma_sign.
    def exitComma_sign(self, ctx:JavaParser.Comma_signContext):
        pass


    # Enter a parse tree produced by JavaParser#operation.
    def enterOperation(self, ctx:JavaParser.OperationContext):
        pass

    # Exit a parse tree produced by JavaParser#operation.
    def exitOperation(self, ctx:JavaParser.OperationContext):
        pass


    # Enter a parse tree produced by JavaParser#assigne.
    def enterAssigne(self, ctx:JavaParser.AssigneContext):
        pass

    # Exit a parse tree produced by JavaParser#assigne.
    def exitAssigne(self, ctx:JavaParser.AssigneContext):
        pass


    # Enter a parse tree produced by JavaParser#assignment.
    def enterAssignment(self, ctx:JavaParser.AssignmentContext):
        pass

    # Exit a parse tree produced by JavaParser#assignment.
    def exitAssignment(self, ctx:JavaParser.AssignmentContext):
        pass


    # Enter a parse tree produced by JavaParser#definition.
    def enterDefinition(self, ctx:JavaParser.DefinitionContext):
        pass

    # Exit a parse tree produced by JavaParser#definition.
    def exitDefinition(self, ctx:JavaParser.DefinitionContext):
        pass


    # Enter a parse tree produced by JavaParser#declaration.
    def enterDeclaration(self, ctx:JavaParser.DeclarationContext):
        pass

    # Exit a parse tree produced by JavaParser#declaration.
    def exitDeclaration(self, ctx:JavaParser.DeclarationContext):
        pass


    # Enter a parse tree produced by JavaParser#increment.
    def enterIncrement(self, ctx:JavaParser.IncrementContext):
        pass

    # Exit a parse tree produced by JavaParser#increment.
    def exitIncrement(self, ctx:JavaParser.IncrementContext):
        pass


    # Enter a parse tree produced by JavaParser#decrement.
    def enterDecrement(self, ctx:JavaParser.DecrementContext):
        pass

    # Exit a parse tree produced by JavaParser#decrement.
    def exitDecrement(self, ctx:JavaParser.DecrementContext):
        pass


    # Enter a parse tree produced by JavaParser#expression.
    def enterExpression(self, ctx:JavaParser.ExpressionContext):
        pass

    # Exit a parse tree produced by JavaParser#expression.
    def exitExpression(self, ctx:JavaParser.ExpressionContext):
        pass


    # Enter a parse tree produced by JavaParser#return_def.
    def enterReturn_def(self, ctx:JavaParser.Return_defContext):
        pass

    # Exit a parse tree produced by JavaParser#return_def.
    def exitReturn_def(self, ctx:JavaParser.Return_defContext):
        pass


    # Enter a parse tree produced by JavaParser#line.
    def enterLine(self, ctx:JavaParser.LineContext):
        pass

    # Exit a parse tree produced by JavaParser#line.
    def exitLine(self, ctx:JavaParser.LineContext):
        pass


    # Enter a parse tree produced by JavaParser#if_definition.
    def enterIf_definition(self, ctx:JavaParser.If_definitionContext):
        pass

    # Exit a parse tree produced by JavaParser#if_definition.
    def exitIf_definition(self, ctx:JavaParser.If_definitionContext):
        pass


    # Enter a parse tree produced by JavaParser#while_definition.
    def enterWhile_definition(self, ctx:JavaParser.While_definitionContext):
        pass

    # Exit a parse tree produced by JavaParser#while_definition.
    def exitWhile_definition(self, ctx:JavaParser.While_definitionContext):
        pass


    # Enter a parse tree produced by JavaParser#for_index_virable.
    def enterFor_index_virable(self, ctx:JavaParser.For_index_virableContext):
        pass

    # Exit a parse tree produced by JavaParser#for_index_virable.
    def exitFor_index_virable(self, ctx:JavaParser.For_index_virableContext):
        pass


    # Enter a parse tree produced by JavaParser#for_condition.
    def enterFor_condition(self, ctx:JavaParser.For_conditionContext):
        pass

    # Exit a parse tree produced by JavaParser#for_condition.
    def exitFor_condition(self, ctx:JavaParser.For_conditionContext):
        pass


    # Enter a parse tree produced by JavaParser#for_definition.
    def enterFor_definition(self, ctx:JavaParser.For_definitionContext):
        pass

    # Exit a parse tree produced by JavaParser#for_definition.
    def exitFor_definition(self, ctx:JavaParser.For_definitionContext):
        pass


    # Enter a parse tree produced by JavaParser#code.
    def enterCode(self, ctx:JavaParser.CodeContext):
        pass

    # Exit a parse tree produced by JavaParser#code.
    def exitCode(self, ctx:JavaParser.CodeContext):
        pass


    # Enter a parse tree produced by JavaParser#body.
    def enterBody(self, ctx:JavaParser.BodyContext):
        pass

    # Exit a parse tree produced by JavaParser#body.
    def exitBody(self, ctx:JavaParser.BodyContext):
        pass


    # Enter a parse tree produced by JavaParser#access_modifier.
    def enterAccess_modifier(self, ctx:JavaParser.Access_modifierContext):
        pass

    # Exit a parse tree produced by JavaParser#access_modifier.
    def exitAccess_modifier(self, ctx:JavaParser.Access_modifierContext):
        pass


    # Enter a parse tree produced by JavaParser#method_params.
    def enterMethod_params(self, ctx:JavaParser.Method_paramsContext):
        pass

    # Exit a parse tree produced by JavaParser#method_params.
    def exitMethod_params(self, ctx:JavaParser.Method_paramsContext):
        pass


    # Enter a parse tree produced by JavaParser#method.
    def enterMethod(self, ctx:JavaParser.MethodContext):
        pass

    # Exit a parse tree produced by JavaParser#method.
    def exitMethod(self, ctx:JavaParser.MethodContext):
        pass


    # Enter a parse tree produced by JavaParser#static_method.
    def enterStatic_method(self, ctx:JavaParser.Static_methodContext):
        pass

    # Exit a parse tree produced by JavaParser#static_method.
    def exitStatic_method(self, ctx:JavaParser.Static_methodContext):
        pass


    # Enter a parse tree produced by JavaParser#class_def.
    def enterClass_def(self, ctx:JavaParser.Class_defContext):
        pass

    # Exit a parse tree produced by JavaParser#class_def.
    def exitClass_def(self, ctx:JavaParser.Class_defContext):
        pass


