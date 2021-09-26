import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'mapPrimitiveSwidTypeNameToPrimitiveTsTypeName.freezed.dart';

@freezed
class MapPrimitiveSwidTypeNameToPrimitiveTsTypeName
    with
        _$MapPrimitiveSwidTypeNameToPrimitiveTsTypeName,
        HashKeyMixin<MapPrimitiveSwidTypeNameToPrimitiveTsTypeName>,
        HashComparableMixin<MapPrimitiveSwidTypeNameToPrimitiveTsTypeName>,
        UnhashableMixin<MapPrimitiveSwidTypeNameToPrimitiveTsTypeName>,
        SwarsNonUniqueTermMixin<
            MapPrimitiveSwidTypeNameToPrimitiveTsTypeName,
            $MapPrimitiveSwidTypeNameToPrimitiveTsTypeNameCopyWith<
                MapPrimitiveSwidTypeNameToPrimitiveTsTypeName>,
            String>,
        SwarsTransformMixin<
            MapPrimitiveSwidTypeNameToPrimitiveTsTypeName,
            $MapPrimitiveSwidTypeNameToPrimitiveTsTypeNameCopyWith<
                MapPrimitiveSwidTypeNameToPrimitiveTsTypeName>,
            String>,
        SwarsTermStringResultMixin {
  MapPrimitiveSwidTypeNameToPrimitiveTsTypeName._();

  factory MapPrimitiveSwidTypeNameToPrimitiveTsTypeName({
    required final String str,
  }) = _$MapPrimitiveSwidTypeNameToPrimitiveTsTypeNameCtor;

  @override
  MapPrimitiveSwidTypeNameToPrimitiveTsTypeName clone({
    final String? str,
  }) =>
      MapPrimitiveSwidTypeNameToPrimitiveTsTypeName(
        str: str ?? this.str,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        str == "String" || str == "String*" || str == "String?"
            ? "string"
            : str == "bool" || str == "bool*" || str == "bool?"
                ? "boolean"
                : str == "int" ||
                        str == "int*" ||
                        str == "int?" ||
                        str == "double" ||
                        str == "double*" ||
                        str == "double?"
                    ? "number"
                    : str == "Null"
                        ? "null"
                        : str,
      );
}
