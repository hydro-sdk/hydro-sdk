import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/mapClassLibrarySourcePath.dart';

part 'swidStaticConstFieldDeclaration.g.dart';

@JsonSerializable()
class SwidStaticConstFieldDeclaration {
 final String name;
}