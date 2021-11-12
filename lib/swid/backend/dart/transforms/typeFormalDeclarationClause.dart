import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
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
  late final List<int> hashableParts = [
    ...swidTypeFormal.hashableParts,
  ];

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
      SwarsTermResult.fromString("");
}
