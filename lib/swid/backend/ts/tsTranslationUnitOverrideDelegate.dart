import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';

class TsTranslationUnitOverrideDelegate {
  final SwidClass swidClass;

  const TsTranslationUnitOverrideDelegate({
    required this.swidClass,
  });

  String toTsSource() =>
      swidClass.declarationModifiers.overridenTransforms.firstWhereOrNull(
                (x) => x.item1 == "tsTranslationUnit",
              ) !=
              null
          ? swidClass.declarationModifiers.overridenTransforms
              .firstWhere(
                (x) => x.item1 == "tsTranslationUnit",
              )
              .item2
          : "";
}
