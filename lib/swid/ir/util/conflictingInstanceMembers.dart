import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/instanceMemberIntersection.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'conflictingInstanceMembers.freezed.dart';

@freezed
class ConflictingInstanceMembersResult
    with _$ConflictingInstanceMembersResult
    implements ICloneable<ConflictingInstanceMembersResult> {
  const ConflictingInstanceMembersResult._();

  const factory ConflictingInstanceMembersResult({
    required final List<String> methods,
    required final List<String> instanceFields,
  }) = _$ConflictingInstanceMembersResultCtor;

  factory ConflictingInstanceMembersResult.clone({
    required final ConflictingInstanceMembersResult
        instanceMemberIntersectionResult,
    List<String>? methods,
    List<String>? instanceFields,
  }) =>
      ConflictingInstanceMembersResult(
        methods: methods ?? List.from(instanceMemberIntersectionResult.methods),
        instanceFields: instanceFields ??
            List.from(instanceMemberIntersectionResult.instanceFields),
      );

  @override
  ConflictingInstanceMembersResult clone({
    List<String>? methods,
    List<String>? instanceFields,
  }) =>
      ConflictingInstanceMembersResult.clone(
        instanceMemberIntersectionResult: this,
        methods: methods,
        instanceFields: instanceFields,
      );
}

ConflictingInstanceMembersResult conflictingInstanceMembers({
  required final SwidClass first,
  required final SwidClass second,
}) =>
    (({
      required final InstanceMemberIntersectionResult
          instanceMemberIntersectionResult,
    }) =>
        ConflictingInstanceMembersResult(
          methods: instanceMemberIntersectionResult.methods
              .where((x) =>
                  first.methods.firstWhere((k) => k.name == x) !=
                  second.methods.firstWhere((k) => k.name == x))
              .toList(),
          instanceFields: instanceMemberIntersectionResult.instanceFields
              .where((x) =>
                  first.instanceFieldDeclarations.entries
                      .firstWhere((k) => k.key == x) !=
                  second.instanceFieldDeclarations.entries
                      .firstWhere((k) => k.key == x))
              .toList(),
        ))(
      instanceMemberIntersectionResult: instanceMemberIntersection(
        first: first,
        second: second,
      ),
    );
