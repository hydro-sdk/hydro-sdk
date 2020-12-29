import 'package:analyzer/dart/ast/ast.dart'
    show
        VariableDeclarationList,
        VariableDeclaration,
        InstanceCreationExpression,
        SimpleStringLiteral,
        DoubleLiteral,
        BinaryExpression;
import 'package:analyzer/src/dart/element/element.dart'
    show ConstFieldElementImpl;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStringLiteral.dart';

part 'swidStaticConstFieldDeclaration.freezed.dart';
part 'swidStaticConstFieldDeclaration.g.dart';

@freezed
abstract class SwidStaticConstFieldDeclaration
    with _$SwidStaticConstFieldDeclaration {
  factory SwidStaticConstFieldDeclaration({
    @required String name,
    @required @nullable SwidStaticConst value,
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
    return SwidStaticConstFieldDeclaration(
      name: declaration.declaredElement.name,
      value: declaration.childEntities.firstWhere(
                (x) => x is InstanceCreationExpression,
                orElse: () => null,
              ) !=
              null
          ? SwidStaticConst.fromSwidStaticConstFunctionInvocation(
              staticConstFunctionInvocation: SwidStaticConstFunctionInvocation
                  .fromInstanceCreationExpression(
                      instanceCreationExpression:
                          declaration.childEntities.firstWhere(
              (x) => x is InstanceCreationExpression,
              orElse: () => null,
            )))
          : declaration.childEntities.firstWhere(
                    (x) => x is SimpleStringLiteral,
                    orElse: () => null,
                  ) !=
                  null
              ? SwidStaticConst.fromSwidStringLiteral(
                  swidStringLiteral: SwidStringLiteral.fromSimpleStringLiteral(
                      simpleStringLiteral: declaration.childEntities.firstWhere(
                  (x) => x is SimpleStringLiteral,
                  orElse: () => null,
                )))
              : declaration.childEntities.firstWhere(
                        (x) => x is DoubleLiteral,
                        orElse: () => null,
                      ) !=
                      null
                  ? SwidStaticConst.fromDoubleLiteral(
                      swidDoubleLiteral: SwidDoubleLiteral.fromDoubleLiteral(
                        doubleLiteral: declaration.childEntities.firstWhere(
                            (x) => x is DoubleLiteral,
                            orElse: () => null),
                      ),
                    )
                  : declaration.childEntities.firstWhere(
                            (x) => x is BinaryExpression,
                            orElse: () => null,
                          ) !=
                          null
                      ? SwidStaticConst.fromSwidStaticConstBinaryExpression(
                          swidStaticConstBinaryExpression:
                              SwidStaticConstBinaryExpression
                                  .fromBinaryExpression(
                                      binaryExpression:
                                          declaration.childEntities.firstWhere(
                          (x) => x is BinaryExpression,
                          orElse: () => null,
                        )))
                      : null,
    );
  }
}
