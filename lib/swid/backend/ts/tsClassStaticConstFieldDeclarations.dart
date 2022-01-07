import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassStaticConstFieldDeclarations.freezed.dart';

@freezed
class TsClassStaticConstFieldDeclarations
    with
        _$TsClassStaticConstFieldDeclarations,
        HashKeyMixin<TsClassStaticConstFieldDeclarations>,
        HashComparableMixin<TsClassStaticConstFieldDeclarations>,
        SwarsTransformMixin<
            TsClassStaticConstFieldDeclarations,
            $TsClassStaticConstFieldDeclarationsCopyWith<
                TsClassStaticConstFieldDeclarations>,
            String>,
        SwarsTermStringResultMixin {
  TsClassStaticConstFieldDeclarations._();

  factory TsClassStaticConstFieldDeclarations({
    required final SwidClass swidClass,
  }) = _$TsClassStaticConstFieldDeclarationsCtor;

  @override
  String get cacheGroup => "tsClassStaticConstFieldDeclarations";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassStaticConstFieldDeclarations clone({
    final SwidClass? swidClass,
  }) =>
      TsClassStaticConstFieldDeclarations(
        swidClass: swidClass ?? this.swidClass,
      );
  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) {
    var res = "";
    swidClass.staticConstFieldDeclarations.forEach((x) {
      res += "    " +
          pipeline.reduceFromTerm(
            TransformStaticConstFieldDeclaration(
              staticConstFieldDeclaration: x,
              parentClass: swidClass,
              scopeResolver: makeDefaultStaticConstFieldReferenceScopeResolver(
                parentClass: swidClass,
              ),
            ),
          );
      res += "\n";
    });
    return SwarsTermResult.fromString(res);
  }
}
