import 'package:analyzer/dart/ast/ast.dart'
    show
        VariableDeclarationList,
        VariableDeclaration,
        InstanceCreationExpression,
        SimpleStringLiteral;
import 'package:analyzer/src/dart/element/element.dart'
    show ConstFieldElementImpl;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidStringLiteral.dart';
import 'package:meta/meta.dart';

part 'swidStaticConstFieldDeclaration.freezed.dart';
part 'swidStaticConstFieldDeclaration.g.dart';

@freezed
abstract class SwidStaticConstFieldDeclaration
    with _$SwidStaticConstFieldDeclaration {
  factory SwidStaticConstFieldDeclaration({
    @required String name,
    @required @nullable SwidLiteral value,
  }) = _$Data;

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
        value: declaration.childEntities.firstWhere((x) => x is InstanceCreationExpression, orElse: () => null) !=
                null
            ? SwidLiteral.fromSwidStaticConstFunctionInvocation(
                staticConstFunctionInvocation:
                    SwidStaticConstFunctionInvocation.fromInstanceCreationExpression(
                        instanceCreationExpression: declaration.childEntities
                            .firstWhere((x) => x is InstanceCreationExpression,
                                orElse: () => null)))
            : declaration.childEntities.firstWhere((x) => x is SimpleStringLiteral, orElse: () => null) !=
                    null
                ? SwidLiteral.fromSwidStringLiteral(
                    swidStringLiteral: SwidStringLiteral.fromSimpleStringLiteral(
                        simpleStringLiteral: declaration.childEntities
                            .firstWhere((x) => x is SimpleStringLiteral, orElse: () => null)))
                : null);
  }
}
