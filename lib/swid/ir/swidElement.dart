import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidTypeArgumentElement.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidElement.freezed.dart';
part 'swidElement.g.dart';

@freezed
class SwidElement
    with
        _$SwidElement,
        HashKeyMixin<SwidElement>,
        HashComparableMixin<SwidElement>
    implements IJsonTransformable {
  SwidElement._();

  factory SwidElement.fromSwidTypeArgumentElement({
    required final SwidTypeArgumentElement swidTypeArgumentElement,
  }) = _$SwidElementFromSwidTypeArgumentElement;

  factory SwidElement.fromJson(Map<String, dynamic> json) =>
      _$SwidElementFromJson(json);

  @override
  SwidElement fromJson(final Map<String, dynamic> json) =>
      SwidElement.fromJson(json);

  @override
  late final Iterable<Iterable<int>> hashableParts = when(
    fromSwidTypeArgumentElement: (val) => val.hashKey.hashableParts,
  );

  @override
  SwidElement clone() => when(
        fromSwidTypeArgumentElement: (val) =>
            SwidElement.fromSwidTypeArgumentElement(
          swidTypeArgumentElement: val.clone(),
        ),
      );
}
