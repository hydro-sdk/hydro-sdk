import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString;

import 'package:dart_style/dart_style.dart';

class DartBindInstanceFieldDirect {
  final String instanceFieldName;
  final String tableKey;

  DartBindInstanceFieldDirect({
    required this.instanceFieldName,
    required this.tableKey,
  });

  String toDartSource() => DartFormatter().formatStatement(refer("table")
      .index(literalString(tableKey))
      .assign(refer(instanceFieldName))
      .statement
      .accept(DartEmitter(
        useNullSafetySyntax: true,
      ))
      .toString());
}
