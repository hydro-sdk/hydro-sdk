import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part "swidInstantiableGeneric.freezed.dart";
part "swidInstantiableGeneric.g.dart";

@freezed
class SwidInstantiableGeneric
    with
        _$SwidInstantiableGeneric,
        HashKeyMixin<SwidInstantiableGeneric>,
        HashComparableMixin<SwidInstantiableGeneric> {
  SwidInstantiableGeneric._();
  factory SwidInstantiableGeneric.fromSwidClass({
    required final SwidClass swidClass,
  }) = _$SwidInstantiableGenericFromSwidClass;

  factory SwidInstantiableGeneric.fromSwidInterface({
    required final SwidInterface swidInterface,
  }) = _$SwidInstantiableGenericFromSwidInterface;

  factory SwidInstantiableGeneric.fromSwidFunctionType({
    required final SwidFunctionType swidFunctionType,
  }) = _$SwidInstantiableGenericFromSwidFunctionType;

  factory SwidInstantiableGeneric.fromJson(Map<String, dynamic> json) =>
      _$SwidInstantiableGenericFromJson(json);

  @override
  late final Iterable<Iterable<int>> hashableParts = when(
    fromSwidClass: (val) => val.hashKey.hashableParts,
    fromSwidInterface: (val) => val.hashKey.hashableParts,
    fromSwidFunctionType: (val) => val.hashKey.hashableParts,
  );

  @override
  SwidInstantiableGeneric clone() => when(
        fromSwidClass: (val) => SwidInstantiableGeneric.fromSwidClass(
          swidClass: val,
        ),
        fromSwidInterface: (val) => SwidInstantiableGeneric.fromSwidInterface(
          swidInterface: val,
        ),
        fromSwidFunctionType: (val) =>
            SwidInstantiableGeneric.fromSwidFunctionType(
          swidFunctionType: val,
        ),
      );
}
