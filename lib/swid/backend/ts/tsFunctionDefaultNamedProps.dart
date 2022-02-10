import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedPropsObjectName.dart';
import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/markClassReferences.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteReferences.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionDefaultNamedProps.freezed.dart';

@freezed
class TsFunctionDefaultNamedProps
    with
        _$TsFunctionDefaultNamedProps,
        HashKeyMixin<TsFunctionDefaultNamedProps>,
        HashComparableMixin<TsFunctionDefaultNamedProps>,
        SwarsTransformMixin<
            TsFunctionDefaultNamedProps,
            $TsFunctionDefaultNamedPropsCopyWith<TsFunctionDefaultNamedProps>,
            String>,
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  TsFunctionDefaultNamedProps._();

  factory TsFunctionDefaultNamedProps({
    required final SwidFunctionType swidFunctionType,
  }) = _$TsFunctionDefaultNamedPropsCtor;

  @override
  String get cacheGroup => "tsFunctionDefaultNamedProps";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  TsFunctionDefaultNamedProps clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      TsFunctionDefaultNamedProps(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidFunctionType.namedDefaultParameters.isNotEmpty
            ? "const ${pipeline.reduceFromTerm(
                  TsFunctionDefaultNamedPropsObjectName(
                      swidFunctionType: swidFunctionType),
                )} = {\n" +
                swidFunctionType.namedDefaultParameters.entries
                    .map((x) => !pipeline.reduceFromTerm(
                          IsInexpressibleStaticConst(
                            parentClass: null,
                            swidStaticConst: x.value.value,
                          ),
                        )
                            ? [
                                "    ${x.key}: ",
                                pipeline.reduceFromTerm(
                                  TransformTypeDeclarationToTs(
                                    parentClass: null,
                                    emitTopLevelInitializersForOptionalPositionals:
                                        true,
                                    swidType: pipeline.reduceFromTerm(
                                      RewriteReferences(
                                        swidType: pipeline.reduceFromTerm(
                                          MarkClassReferences(
                                            swidType: SwidType
                                                .fromSwidDefaultFormalParameter(
                                              swidDefaultFormalParameter:
                                                  x.value,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                ",",
                              ].join()
                            : "")
                    .toList()
                    .join("\n") +
                "\n};\n"
            : "",
      );
}
