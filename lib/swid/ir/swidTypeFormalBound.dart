import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidTypeFormalBound.freezed.dart';
part 'swidTypeFormalBound.g.dart';

@freezed
class SwidTypeFormalBound
    with
        _$SwidTypeFormalBound,
        HashKeyMixin<SwidTypeFormalBound>,
        HashComparableMixin<SwidTypeFormalBound> {
  SwidTypeFormalBound._();

  factory SwidTypeFormalBound.fromSwidInterface({
    required final SwidInterface swidInterface,
  }) = _$SwidTypeFormalBoundFromSwidInterface;

  factory SwidTypeFormalBound.fromSwidFunctionType({
    required final SwidFunctionType swidFunctionType,
  }) = _$SwidTypeFormalBoundFromSwidFunctionType;

  factory SwidTypeFormalBound.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalBoundFromJson(json);

  @override
  late final List<int> hashableParts = when(
    fromSwidInterface: (val) => val.hashableParts,
    fromSwidFunctionType: (val) => val.hashableParts,
  );

  @override
  SwidTypeFormalBound clone() => when(
        fromSwidInterface: (val) => SwidTypeFormalBound.fromSwidInterface(
          swidInterface: val.clone(),
        ),
        fromSwidFunctionType: (val) => SwidTypeFormalBound.fromSwidFunctionType(
          swidFunctionType: val.clone(),
        ),
      );
}
