import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Method, Parameter, Block, Code;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';

class DartBoxEnumReference {
  final SwidType type;
  final String referenceName;

  DartBoxEnumReference({@required this.type, @required this.referenceName});

  String toDartSource() => DartFormatter().formatStatement(refer(type.name)
      .property("values")
      .property("indexWhere")
      .call(
        [
          Method((k) => k
            ..requiredParameters.addAll([
              Parameter((p) => p..name = "x"),
            ])
            ..body = Block.of([Code("return x == $referenceName;")])).closure
        ],
        {},
      )
      .statement
      .accept(DartEmitter())
      .toString());
}
