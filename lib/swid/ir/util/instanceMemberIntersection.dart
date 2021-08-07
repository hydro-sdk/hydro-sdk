import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'instanceMemberIntersection.freezed.dart';

@freezed
class InstanceMemberIntersectionResult
    with _$InstanceMemberIntersectionResult
    implements ICloneable<InstanceMemberIntersectionResult> {
  const InstanceMemberIntersectionResult._();

  const factory InstanceMemberIntersectionResult({
    required List<String> methods,
    required List<String> instanceFields,
  }) = _$InstanceMemberIntersectionResultCtor;

  factory InstanceMemberIntersectionResult.clone({
    required InstanceMemberIntersectionResult instanceMemberIntersectionResult,
    List<String>? methods,
    List<String>? instanceFields,
  }) =>
      InstanceMemberIntersectionResult(
        methods: methods ?? List.from(instanceMemberIntersectionResult.methods),
        instanceFields: instanceFields ??
            List.from(instanceMemberIntersectionResult.instanceFields),
      );

  @override
  InstanceMemberIntersectionResult clone({
    List<String>? methods,
    List<String>? instanceFields,
  }) =>
      InstanceMemberIntersectionResult.clone(
        instanceMemberIntersectionResult: this,
        methods: methods,
        instanceFields: instanceFields,
      );
}

Iterable<T>
    leftAssociativeIntersection<T extends Object, U extends Iterable<T>>({
  required U left,
  required U right,
}) =>
        left
            .mapIndexed((_, x) => right.firstWhereOrNull((k) => x == k))
            .whereNotNull();

InstanceMemberIntersectionResult instanceMemberIntersection({
  required SwidClass first,
  required SwidClass second,
}) =>
    InstanceMemberIntersectionResult(
      methods: [
        ...leftAssociativeIntersection<String, Iterable<String>>(
          left: first.methods.map((x) => x.name),
          right: second.methods.map((x) => x.name),
        ),
        ...leftAssociativeIntersection<String, Iterable<String>>(
          left: second.methods.map((x) => x.name),
          right: first.methods.map((x) => x.name),
        )
      ].toSet().toList(),
      instanceFields: [
        ...leftAssociativeIntersection<String, Iterable<String>>(
          left: first.instanceFieldDeclarations.entries.map((x) => x.key),
          right: second.instanceFieldDeclarations.entries.map((x) => x.key),
        ),
        ...leftAssociativeIntersection<String, Iterable<String>>(
          left: second.instanceFieldDeclarations.entries.map((x) => x.key),
          right: first.instanceFieldDeclarations.entries.map((x) => x.key),
        )
      ].toSet().toList(),
    );
