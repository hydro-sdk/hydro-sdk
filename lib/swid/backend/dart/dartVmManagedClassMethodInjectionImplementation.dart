import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, Code;

import 'package:dart_style/dart_style.dart';

import 'package:hydro_sdk/swid/backend/dart/dartMethodBindingImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

class DartVMManagedClassMethodInjectionImplementation {
  final SwidFunctionType swidFunctionType;
  final String tableKey;

  const DartVMManagedClassMethodInjectionImplementation({
    required final this.swidFunctionType,
    required final this.tableKey,
  });

  String toDartSource() => DartFormatter().formatStatement(refer("table")
      .index(literalString(tableKey))
      .assign(
        luaDartBinding(
          code: Code(
            DartMethodBindingImplementation(
              swidFunctionType: swidFunctionType,
            ).toDartSource(),
          ),
        ),
      )
      .statement
      .accept(DartEmitter(
        useNullSafetySyntax: true,
      ))
      .toString());
}
