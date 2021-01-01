import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, literalNum;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

class DartUnpackClosures {
  final SwidFunctionType swidFunctionType;

  DartUnpackClosures({
    @required this.swidFunctionType,
  });

  String toDartSource() => ([
        ...swidFunctionType.normalParameterNames
            .map(
              (x) => (({
                String parameterName,
                SwidType parameterType,
              }) =>
                  parameterType.when(
                    fromSwidInterface: (_) => "",
                    fromSwidClass: (_) => "",
                    fromSwidDefaultFormalParameter: (_) => "",
                    fromSwidFunctionType: (val) => ([
                      "Closure ",
                      parameterName,
                      "=",
                      refer("args")
                          .index(literalNum(swidFunctionType
                                  .normalParameterNames
                                  .indexWhere((e) => e == x) +
                              1))
                          .statement
                          .accept(DartEmitter())
                          .toString(),
                    ]..removeWhere((x) => x == null))
                        .join(""),
                  ))(
                parameterName: x,
                parameterType: swidFunctionType.normalParameterTypes.elementAt(
                  swidFunctionType.normalParameterNames
                      .indexWhere((e) => e == x),
                ),
              ),
            )
            .toList(),
        ...swidFunctionType.namedParameterTypes.entries
            .map(
              (x) => (({
                String parameterName,
                SwidType parameterType,
              }) =>
                  parameterType.when(
                    fromSwidInterface: (_) => "",
                    fromSwidClass: (_) => "",
                    fromSwidDefaultFormalParameter: (_) => "",
                    fromSwidFunctionType: (val) => ([
                      "Closure ",
                      parameterName,
                      "=",
                      refer("args")
                          .index(literalNum(
                              swidFunctionType.normalParameterNames.length + 1))
                          .index(literalString(parameterName))
                          .statement
                          .accept(DartEmitter())
                          .toString(),
                    ]..removeWhere((x) => x == null))
                        .join(""),
                  ))(
                parameterName: x.key,
                parameterType: x.value,
              ),
            )
            .toList()
      ]..removeWhere((x) => x == null))
          .join("\n");
}
