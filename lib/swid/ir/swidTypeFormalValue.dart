import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidTypeFormalValue.freezed.dart';
part 'swidTypeFormalValue.g.dart';

@freezed
class SwidTypeFormalValue
    with
        _$SwidTypeFormalValue,
        HashKeyMixin<SwidTypeFormalValue>,
        HashComparableMixin<SwidTypeFormalValue> {
  SwidTypeFormalValue._();

  factory SwidTypeFormalValue.fromString({
    required final String string,
  }) = _$FromString;

  factory SwidTypeFormalValue.fromSwidClass({
    required final SwidClass swidClass,
  }) = _$FromSwidClass;

  factory SwidTypeFormalValue.fromSwidInterface({
    required final SwidInterface swidInterface,
  }) = _$FromSwidInterface;

  factory SwidTypeFormalValue.fromSwidFunctionType({
    required final SwidFunctionType swidFunctionType,
  }) = _$FromSwidFunctionType;

  factory SwidTypeFormalValue.clone({
    required final SwidTypeFormalValue swidTypeFormalValue,
  }) =>
      swidTypeFormalValue.when(
        fromString: (val) => SwidTypeFormalValue.fromString(string: val),
        fromSwidClass: (val) => SwidTypeFormalValue.fromSwidClass(
          swidClass: val,
        ),
        fromSwidInterface: (val) => SwidTypeFormalValue.fromSwidInterface(
          swidInterface: val,
        ),
        fromSwidFunctionType: (val) => SwidTypeFormalValue.fromSwidFunctionType(
          swidFunctionType: val,
        ),
      );

  factory SwidTypeFormalValue.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalValueFromJson(json);

  @override
  late final Iterable<Iterable<int>> hashableParts = when(
    fromString: (val) => val.hashableParts,
    fromSwidClass: (val) => val.hashKey.hashableParts,
    fromSwidInterface: (val) => val.hashKey.hashableParts,
    fromSwidFunctionType: (val) => val.hashKey.hashableParts,
  );

  String get name => when(
        fromString: (val) => val,
        fromSwidClass: (val) => val.name,
        fromSwidInterface: (val) => val.name,
        fromSwidFunctionType: (val) => val.name,
      );

  String get displayName => when(
        fromString: (val) => val,
        fromSwidClass: (val) =>
            SwidType.fromSwidClass(swidClass: val).displayName,
        fromSwidInterface: (val) =>
            SwidType.fromSwidInterface(swidInterface: val).displayName,
        fromSwidFunctionType: (val) =>
            SwidType.fromSwidFunctionType(swidFunctionType: val).displayName,
      );

  @override
  SwidTypeFormalValue clone() => SwidTypeFormalValue.clone(
        swidTypeFormalValue: this,
      );
}
