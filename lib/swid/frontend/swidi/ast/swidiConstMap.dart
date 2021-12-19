import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstMap.freezed.dart';

@freezed
class SwidiConstMap
    with
        _$SwidiConstMap,
        HashKeyMixin<SwidiConstMap>,
        HashComparableMixin<SwidiConstMap>
    implements ICopyable<SwidiConstMap, $SwidiConstMapCopyWith<SwidiConstMap>> {
  SwidiConstMap._();

  factory SwidiConstMap({
    required final List<Tuple2<SwidiConst, SwidiConst>> entries,
  }) = _$SwidiConstMapCtor;

  factory SwidiConstMap.clone({
    required final SwidiConstMap swidiConstMap,
    final List<Tuple2<SwidiConst, SwidiConst>>? entries,
  }) =>
      SwidiConstMap(
        entries: entries ??
            swidiConstMap.entries
                .map(
                  (x) => Tuple2(
                    x.item1.clone(),
                    x.item2.clone(),
                  ),
                )
                .toList(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* entries.hashableParts;
  }

  @override
  SwidiConstMap clone({
    final List<Tuple2<SwidiConst, SwidiConst>>? entries,
  }) =>
      SwidiConstMap.clone(
        swidiConstMap: this,
        entries: entries,
      );
}
