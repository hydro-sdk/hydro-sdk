import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

part 'swidClass.g.dart';

@JsonSerializable()
class SwidClass implements SwidType {
  final String name;
  final SwidNullabilitySuffix nullabilitySuffix;
  final String originalPackagePath;
  final SwidFunctionType constructorType;
  final List<SwidFunctionType> methods;

  SwidClass({
    @required this.name,
    @required this.nullabilitySuffix,
    @required this.originalPackagePath,
    @required this.constructorType,
    @required this.methods,
  });

  Map<String, dynamic> toJson() => _$SwidClassToJson(this);

  factory SwidClass.fromJson(Map<String, dynamic> json) =>
      _$SwidClassFromJson(json);

  factory SwidClass.clone({
    @required SwidClass swidClass,
    String name,
    SwidNullabilitySuffix nullabilitySuffix,
    String originalPackagePath,
    SwidFunctionType constructorType,
    List<SwidFunctionType> methods,
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
                  []));
}
