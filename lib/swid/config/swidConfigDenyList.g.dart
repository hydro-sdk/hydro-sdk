// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidConfigDenyList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidConfigDenyListCtor _$_$_$SwidConfigDenyListCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidConfigDenyListCtor(
    classNames:
        (json['classNames'] as List<dynamic>).map((e) => e as String).toList(),
    packagePaths: (json['packagePaths'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_$SwidConfigDenyListCtorToJson(
        _$_$SwidConfigDenyListCtor instance) =>
    <String, dynamic>{
      'classNames': instance.classNames,
      'packagePaths': instance.packagePaths,
    };
