import 'package:analyzer/dart/ast/ast.dart'
    show
        VariableDeclarationList,
        VariableDeclaration,
        InstanceCreationExpression,
        SimpleStringLiteral;
import 'package:analyzer/src/dart/element/element.dart'
    show ConstFieldElementImpl;
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swidStaticConstFieldDeclaration.g.dart';

@JsonSerializable()
class SwidStaticConstFieldDeclaration {
  final String name;
  final SwidLiteral value;

  SwidStaticConstFieldDeclaration({
    @required this.name,
    @required this.value,
  });

  Map<String, dynamic> toJson() =>
      _$SwidStaticConstFieldDeclarationToJson(this);

  factory SwidStaticConstFieldDeclaration.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFieldDeclarationFromJson(json);

  factory SwidStaticConstFieldDeclaration.fromVariableDeclarationList(
      {@required VariableDeclarationList variableDeclarationList}) {
    assert(variableDeclarationList.isConst);
    assert(!variableDeclarationList.isLate);
    VariableDeclaration declaration = variableDeclarationList.childEntities
        .firstWhere((x) => x is VariableDeclaration);
    assert(declaration != null);
    assert(declaration.declaredElement is ConstFieldElementImpl);
    assert(declaration.declaredElement.isConst);
    assert(declaration.declaredElement.isStatic);
    assert(!declaration.declaredElement.isLate);
    assert(!declaration.declaredElement.isPrivate);
    assert(declaration.declaredElement.isPublic);
    return SwidStaticConstFieldDeclaration(
        name: declaration.declaredElement.name,
        value: declaration.childEntities.firstWhere(
                    (x) => x is InstanceCreationExpression,
                    orElse: () => null) !=
                null
            ? SwidStaticConstFunctionInvocation.fromInstanceCreationExpression(
                instanceCreationExpression: declaration.childEntities
                    .firstWhere((x) => x is InstanceCreationExpression))
            : declaration.childEntities
                        .firstWhere((x) => x is SimpleStringLiteral) !=
                    null
                ? SwidStringLiteral.fromSimpleStringLiteral(
                    simpleStringLiteral: declaration.childEntities
                        .firstWhere((x) => x is SimpleStringLiteral))
                : null);
  }
}
