import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';

part 'swidClass.freezed.dart';
part 'swidClass.g.dart';

@freezed
abstract class SwidClass with _$SwidClass {
  factory SwidClass({
    @required String name,
    @required SwidNullabilitySuffix nullabilitySuffix,
    @required String originalPackagePath,
    @required SwidFunctionType constructorType,
    @required List<SwidFunctionType> methods,
    @required
        List<SwidStaticConstFieldDeclaration> staticConstFieldDeclarations,
    @required Map<String, SwidType> instanceFieldDeclarations,
  }) = _$Data;

  factory SwidClass.fromJson(Map<String, dynamic> json) =>
      _$SwidClassFromJson(json);

  factory SwidClass.clone({
    @required SwidClass swidClass,
    String name,
    SwidNullabilitySuffix nullabilitySuffix,
    String originalPackagePath,
    SwidFunctionType constructorType,
    List<SwidFunctionType> methods,
    List<SwidStaticConstFieldDeclaration> staticConstFieldDeclarations,
    Map<String, SwidType> instanceFieldDeclarations,
  }) =>
      SwidClass(
          name: name ?? swidClass.name,
          nullabilitySuffix: nullabilitySuffix ?? swidClass.nullabilitySuffix,
          originalPackagePath:
              originalPackagePath ?? swidClass.originalPackagePath,
          constructorType: constructorType ??
              SwidFunctionType.clone(
                  swidFunctionType: swidClass.constructorType),
          methods: methods ??
              List.from(swidClass?.methods
                      ?.map((x) => SwidFunctionType.clone(swidFunctionType: x))
                      ?.toList() ??
                  []),
          staticConstFieldDeclarations: staticConstFieldDeclarations ??
              List.from(swidClass.staticConstFieldDeclarations ?? []),
          instanceFieldDeclarations: instanceFieldDeclarations ??
              Map.from(swidClass.instanceFieldDeclarations ?? {}));
}
