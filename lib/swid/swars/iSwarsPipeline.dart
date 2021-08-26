import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';

abstract class ISwarsPipeline<T extends Object> {
  const ISwarsPipeline();

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void add<V extends Object, U extends Object>({
    required covariant final ISwarsTerm<V, U, T> term,
  });

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsPipeline<V> fromTerms<V extends Object, U extends Object,
      K extends Object, L extends Object>({
    required covariant final List<ISwarsTerm<U, K, L>> terms,
  });

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  V reduceFromTerm<V extends Object>(
    covariant final ISwarsTerm<dynamic, dynamic, V> term,
  );

  List<T> reduce();
}
