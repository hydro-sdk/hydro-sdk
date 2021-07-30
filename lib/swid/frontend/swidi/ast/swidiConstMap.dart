import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';

part 'swidiConstMap.freezed.dart';

@freezed
class SwidiConstMap with _$SwidiConstMap {
  const SwidiConstMap._();

  const factory SwidiConstMap({
    required List<Tuple2<SwidiConst, SwidiConst>> entries,
  }) = _$SwidiConstMapCtor;

  factory SwidiConstMap.clone({
    required SwidiConstMap swidiConstMap,
    List<Tuple2<SwidiConst, SwidiConst>>? entries,
  }) =>
      SwidiConstMap(
        entries: entries ??
            swidiConstMap.entries
                .map(
                  (x) => Tuple2(
                    SwidiConst.clone(
                      swidiConst: x.item1,
                    ),
                    SwidiConst.clone(
                      swidiConst: x.item2,
                    ),
                  ),
                )
                .toList(),
      );
}
