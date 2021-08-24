import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';

abstract class ISwarsPipeline<T extends Object> {
  const ISwarsPipeline();

  void add<V extends Object, U extends Object>({
    required covariant final ISwarsTerm<V, U, T> term,
  });

  ISwarsPipeline<V> fromTerms<V extends Object, U extends Object,
      K extends Object, L extends Object>({
    required covariant final List<ISwarsTerm<U, K, L>> terms,
  });

  V reduceFromTerm<V extends Object>(
    covariant final ISwarsTerm<dynamic, dynamic, V> term,
  );

  List<T> reduce();
}
