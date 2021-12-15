import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

bool requiresDartBinding({
  required final SwidClass swidClass,
  required final ISwarsPipeline pipeline,
}) =>
    (swidClass.name[0] != "_" && swidClass.isConstructible()) ||
    swidClass.factoryConstructors.isNotEmpty ||
    swidClass.staticMethods.isNotEmpty ||
    swidClass.staticConstFieldDeclarations.firstWhereOrNull(
          (x) => pipeline.reduceFromTerm(
            IsInexpressibleStaticConst(
              parentClass: swidClass,
              swidStaticConst: x.value,
            ),
          ),
        ) !=
        null;
