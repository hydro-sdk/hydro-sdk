import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

part 'tsVmDeclaration.freezed.dart';
part 'tsVmDeclaration.g.dart';

@freezed
class TsVmDeclaration with _$TsVmDeclaration {
  factory TsVmDeclaration({
    required final String name,
    required final List<SwidFunctionType?> methods,
    required final List<TsVmDeclaration> children,
  }) = _$Data;

  factory TsVmDeclaration.fromJson(Map<String, dynamic> json) =>
      _$TsVmDeclarationFromJson(json);

  factory TsVmDeclaration.clone({
    required final TsVmDeclaration tsVmDeclaration,
    String? name,
    List<SwidFunctionType?>? methods,
    List<TsVmDeclaration>? children,
  }) =>
      TsVmDeclaration(
          name: name ?? tsVmDeclaration.name,
          methods: methods ?? List.from(tsVmDeclaration.methods),
          children: children ?? List.from(tsVmDeclaration.children));
}
