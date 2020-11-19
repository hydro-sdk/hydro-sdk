import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString;
import 'package:dart_style/dart_style.dart';
import 'package:meta/meta.dart';

class DartBindInstanceFieldDirect {
  final String instanceFieldName;

  DartBindInstanceFieldDirect({
    @required this.instanceFieldName,
  });

  String toDartSource() => DartFormatter().formatStatement(refer("table")
      .index(literalString(instanceFieldName))
      .assign(refer(instanceFieldName))
      .statement
      .accept(DartEmitter())
      .toString());
}
