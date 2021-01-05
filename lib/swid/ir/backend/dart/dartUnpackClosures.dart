import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, literalNum;

import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

class DartUnpackClosures {
  final SwidFunctionType swidFunctionType;

  DartUnpackClosures({
    @required this.swidFunctionType,
  });

  String toDartSource() => ([
        ...([
          ...swidFunctionType.normalParameterNames
              .map(
                (x) => Tuple3<String, SwidType, int>(
                    x,
                    swidFunctionType.normalParameterTypes.elementAt(
                      swidFunctionType.normalParameterNames
                          .indexWhere((e) => e == x),
                    ),
                    swidFunctionType.normalParameterNames
                            .indexWhere((e) => e == x) +
                        1),
              )
              .toList(),
          ...swidFunctionType.optionalParameterTypes
              .map(
                (x) => Tuple3<String, SwidType, int>(
                    swidFunctionType.optionalParameterNames.elementAt(
                        swidFunctionType.optionalParameterTypes.indexOf(x)),
                    x,
                    [
                          ...swidFunctionType.normalParameterNames,
                          ...swidFunctionType.optionalParameterNames,
                        ].indexWhere((e) =>
                            e ==
                            swidFunctionType.optionalParameterNames.elementAt(
                                swidFunctionType.optionalParameterTypes
                                    .indexOf(x))) +
                        1),
              )
              .toList(),
        ]
            .map(
              (x) => (({
                String parameterName,
                SwidType parameterType,
                int argIndex,
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
                          .index(literalNum(argIndex))
                          .statement
                          .accept(DartEmitter())
                          .toString(),
                    ]..removeWhere((x) => x == null))
                        .join(""),
                  ))(
                parameterName: x.item1,
                parameterType: x.item2,
                argIndex: x.item3,
              ),
            )
            .toList()),
        ...[
          ...swidFunctionType.namedParameterTypes.entries,
        ]
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
