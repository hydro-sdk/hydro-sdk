import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartLinebreak.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:meta/meta.dart';

part 'dartir.freezed.dart';

@freezed
abstract class DartIr with _$DartIr {
  factory DartIr.fromDartLinebreak({@required DartLinebreak dartLinebreak}) =
      _$FromDartLinebreak;
  factory DartIr.fromLoadNamepsaceSymbolDeclaration(
          {@required
              LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration}) =
      _$FromLoadNamespaceSymbolDeclaration;
  factory DartIr.fromRTManagedClassDeclaration(
          {@required RTManagedClassDeclaration rtManagedClassDeclaration}) =
      _$FromRTManagedClassDeclaration;
}

extension DartIrMethods on DartIr {
  String toDartSource() => when(
        fromDartLinebreak: (val) => val.toDartSource(),
        fromLoadNamepsaceSymbolDeclaration: (val) => val.toDartSource(),
        fromRTManagedClassDeclaration: (val) => val.toDartSource(),
      );
}
