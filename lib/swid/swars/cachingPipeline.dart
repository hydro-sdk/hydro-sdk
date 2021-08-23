import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';

class CachingPipeline<T extends Object> implements ISwarsPipeline<T> {
  CachingPipeline();

  CachingPipeline._({
    required final List<ISwarsTerm<dynamic, dynamic, dynamic>> terms,
    required final Map<int, dynamic> results,
  })   : _terms = terms,
        _results = results;

  List<ISwarsTerm<dynamic, dynamic, dynamic>> _terms = [];

  Map<int, dynamic> _results = {};

  T _callTerm({
    required final ISwarsTerm<dynamic, dynamic, dynamic> term,
  }) {
    if (_results.containsKey(term.hashKey)) {
      return _results[term.hashKey];
    } else {
      final res = term(pipeline: this);

      _results[term.hashKey] = res;

      return res;
    }
  }

  @override
  void add<V extends Object, U extends Object>({
    required covariant final ISwarsTerm<V, U, T> term,
  }) =>
      _terms.add(term);

  List<T> reduce() => _terms
      .map((x) => _callTerm(
            term: x,
          ))
      .toList();

  @override
  ISwarsPipeline<V> fromTerms<V extends Object, U extends Object,
          K extends Object, L extends Object>({
    required covariant final List<ISwarsTerm<U, K, L>> terms,
  }) =>
      CachingPipeline._(
        terms: terms,
        results: _results,
      );
}
