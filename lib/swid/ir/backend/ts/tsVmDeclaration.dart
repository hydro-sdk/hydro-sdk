import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:meta/meta.dart';

part 'tsVmDeclaration.freezed.dart';
part 'tsVmDeclaration.g.dart';

@freezed
abstract class TsVmDeclaration with _$TsVmDeclaration {
  factory TsVmDeclaration({
    @required String name,
    @required List<SwidFunctionType> methods,
    @required List<TsVmDeclaration> children,
  }) = _$Data;

  factory TsVmDeclaration.fromJson(Map<String, dynamic> json) =>
      _$TsVmDeclarationFromJson(json);

  factory TsVmDeclaration.clone({
    @required TsVmDeclaration tsVmDeclaration,
    String name,
    List<SwidFunctionType> methods,
    List<TsVmDeclaration> children,
  }) =>
      TsVmDeclaration(
          name: name ?? tsVmDeclaration.name,
          methods: methods ?? List.from(tsVmDeclaration.methods),
          children: children ?? List.from(tsVmDeclaration.children));
}
