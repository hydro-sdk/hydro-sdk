import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/tsSuperClassClause.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsInterface.freezed.dart';

@freezed
class TsInterface
    with
        _$TsInterface,
        HashKeyMixin<TsInterface>,
        HashComparableMixin<TsInterface>,
        SwarsTransformMixin<TsInterface, $TsInterfaceCopyWith<TsInterface>,
            String>,
        SwarsTermStringResultMixin {
  TsInterface._();

  factory TsInterface({
    required final SwidClass swidClass,
    required final bool emitSuperInterfaceExtensions,
  }) = _$TsInterfaceCtor;

  @override
  String get cacheGroup => "tsInterface";

  @override
  List<int> get hashableParts => [
        ...swidClass.hashableParts,
        ...emitSuperInterfaceExtensions.hashableParts,
      ];

  @override
  TsInterface clone({
    final SwidClass? swidClass,
    final bool? emitSuperInterfaceExtensions,
  }) =>
      TsInterface(
        swidClass: swidClass ?? this.swidClass,
        emitSuperInterfaceExtensions:
            emitSuperInterfaceExtensions ?? this.emitSuperInterfaceExtensions,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      (({
        required final String name,
        required final Map<String, SwidType> members,
        required final String superClause,
        required final List<SwidTypeFormal> typeFormals,
      }) =>
          SwarsTermResult.fromString(
            ([
              "export interface $name",
              pipeline.reduceFromTerm(
                TransformTypeFormalsToTs(
                  swidTypeFormals: typeFormals,
                ),
              ),
              emitSuperInterfaceExtensions ? superClause : "",
              "{",
              ...members.entries
                  .map((x) => "${x.key}: ${pipeline.reduceFromTerm(
                        TransformTypeDeclarationToTs(
                          parentClass: null,
                          swidType: x.value,
                        ),
                      )};")
                  .toList(),
              "}"
            ]..removeWhere((x) => x == null))
                .join("\n"),
          ))(
        name: swidClass.name,
        members: {
          ...Map.fromEntries(swidClass.instanceFieldDeclarations.entries
              .map((x) => MapEntry(x.key, x.value))
              .toList()),
          ...Map.fromEntries(swidClass.methods
              .map((x) => MapEntry(
                  x.name, SwidType.fromSwidFunctionType(swidFunctionType: x)))
              .toList()),
        },
        typeFormals: List.from(swidClass.typeFormals),
        superClause: pipeline.reduceFromTerm(
          TsSuperClassClause(
            swidClass: swidClass,
            clauseKeyword: "extends",
          ),
        ),
      );
}
