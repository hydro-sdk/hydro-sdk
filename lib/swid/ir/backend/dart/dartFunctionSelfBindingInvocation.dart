import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, literalNum;
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:meta/meta.dart';

class DartFunctionSelfBindingInvocation {
  final SwidFunctionType swidFunctionType;
  final bool emitTableBindingPrefix;

  DartFunctionSelfBindingInvocation({
    @required this.swidFunctionType,
    @required this.emitTableBindingPrefix,
  });

  String toDartSource() => refer(
          swidFunctionType.name)
      /*
              args[0] - caller
              args[1...n] - positional arguments
              args[n + 1] - named arguments
      */
      .call(
          swidFunctionType.normalParameterNames.isNotEmpty
              ? swidFunctionType.normalParameterNames
                  .map((x) => refer("args").index(literalNum(swidFunctionType
                          .normalParameterNames
                          .indexWhere((e) => e == x) +
                      1)))
                  .toList()
              : [],
          swidFunctionType.namedParameterTypes.isNotEmpty
              ? Map.fromEntries([
                  ...(emitTableBindingPrefix
                      ? [
                          MapEntry("table", refer("args").index(literalNum(0))),
                          MapEntry("hydroState", refer("hydroState"))
                        ]
                      : []),
                  ...(swidFunctionType.namedParameterTypes.entries.map((x) =>
                      MapEntry(
                          x.key,
                          refer("args")
                              .index(literalNum(
                                  swidFunctionType.normalParameterNames.length +
                                      1))
                              .index(literalString(x.key))))),
                ]..removeWhere((x) => x == null))
              : {})
      .accept(DartEmitter())
      .toString();
}
