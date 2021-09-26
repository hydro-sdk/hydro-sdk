import 'package:collection/collection.dart' show IterableExtension;
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/iSwidType.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

mixin SwidTypeMixin<T extends Object> implements ISwidType<T>, ICloneable<T> {
  @nonVirtual
  bool isAnalysisIgnored({
    required final String analisysName,
  }) =>
      declarationModifiers.ignoredAnalyses
          .firstWhereOrNull((x) => x == analisysName) ==
      null;

  @nonVirtual
  bool isTransformIgnored({
    required final String transformName,
  }) =>
      declarationModifiers.ignoredTransforms
          .firstWhereOrNull((x) => x == transformName) ==
      null;

  @nonVirtual
  bool isTransformOverriden({
    required final String transformName,
  }) =>
      declarationModifiers.overridenTransforms
          .firstWhereOrNull((x) => x.item1 == transformName) !=
      null;

  @nonVirtual
  String transformOverrideContent({
    required final String transformName,
  }) =>
      declarationModifiers.overridenTransforms
          .firstWhere((x) => x.item1 == transformName)
          .item2;
}
