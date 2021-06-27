// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidConfigAllowList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidConfigAllowListCtor _$_$_$SwidConfigAllowListCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidConfigAllowListCtor(
    classNames:
        (json['classNames'] as List<dynamic>).map((e) => e as String).toList(),
    packagePaths: (json['packagePaths'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_$SwidConfigAllowListCtorToJson(
        _$_$SwidConfigAllowListCtor instance) =>
    <String, dynamic>{
      'classNames': instance.classNames,
      'packagePaths': instance.packagePaths,
    };
