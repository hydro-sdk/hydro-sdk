import 'package:code_builder/code_builder.dart'
    show DartEmitter, Reference, literalNum, refer, Expression;

import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';

Reference guardedLuaCallerNamedArgumentsIndex({
  required final int leadingIndex,
  required final String Function({
    required Expression expression,
  })
      nonNullIndexBuilder,
}) =>
    refer(
      refer(luaCallerArgumentsParameterName)
          .property("length")
          .greaterOrEqualTo(literalNum(leadingIndex + 1))
          .conditional(
            refer(
              nonNullIndexBuilder(
                expression: refer(
                  [
                    refer("$luaCallerArgumentsParameterName")
                        .index(
                          literalNum(
                            leadingIndex,
                          ),
                        )
                        .code
                        .accept(
                          DartEmitter(
                            useNullSafetySyntax: true,
                          ),
                        ),
                  ].join(""),
                ),
              ),
            ),
            refer("null"),
          )
          .code
          .accept(
            DartEmitter(
              useNullSafetySyntax: true,
            ),
          )
          .toString(),
    );
