import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'typeFormalDeclarationClause.freezed.dart';

@freezed
class TypeFormalDeclarationClause
    with
        _$TypeFormalDeclarationClause,
        HashKeyMixin<TypeFormalDeclarationClause>,
        HashComparableMixin<TypeFormalDeclarationClause>,
        SwarsTransformMixin<
            TypeFormalDeclarationClause,
            $TypeFormalDeclarationClauseCopyWith<TypeFormalDeclarationClause>,
            String>,
        SwarsTermStringResultMixin {
  TypeFormalDeclarationClause._();

  factory TypeFormalDeclarationClause({
    required final SwidTypeFormal swidTypeFormal,
  }) = _$TypeFormalDeclarationClauseCtor;

  @override
  String get cacheGroup => "typeFormalDeclarationClause";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidTypeFormal.hashKey.hashableParts;
  }

  @override
  TypeFormalDeclarationClause clone({
    final SwidTypeFormal? swidTypeFormal,
  }) =>
      TypeFormalDeclarationClause(
        swidTypeFormal: swidTypeFormal ?? this.swidTypeFormal,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidTypeFormal.swidTypeFormalBound != null
            ? [
                removeTypeArguments(
                  str: swidTypeFormal.value.name,
                ),
                " extends ",
                swidTypeFormal.swidTypeFormalBound!.name,
              ].join("")
            : removeTypeArguments(
                str: swidTypeFormal.value.name,
              ),
      );
}
