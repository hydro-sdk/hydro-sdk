import 'package:freezed_annotation/freezed_annotation.dart' hide DelegatingList;
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';
import 'package:quiver/collection.dart';

part 'hashableList.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class HashableList<T extends IHashKey> extends DelegatingList<T>
    with HashKeyMixin<List<T>> {
  @protected
  final List<T> base;

  HashableList(final this.base);

  factory HashableList.fromJson(final Map<String, dynamic> json) =>
      _$HashableListFromJson(json, (val) => val as T);

  Map<String, dynamic> toJson() => _$HashableListToJson(this, (val) => val);

  @override
  List<T> get delegate => base;

  @override
  late final List<int> hashableParts = base.hashableParts;

  @override
  List<T> clone() => base;
}

extension IterableHashableListExtension<T extends IHashKey> on Iterable<T> {
  HashableList<T> toHashableList() => this.toList().toHashableList();
}

extension ListHashableListExtension<T extends IHashKey> on List<T> {
  HashableList<T> toHashableList() => HashableList(this);
}
