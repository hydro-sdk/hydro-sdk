import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/isInexpressibleStaticConst.dart';

bool requiresDartBinding({
  required SwidClass swidClass,
}) =>
    (swidClass.name[0] != "_" && swidClass.isConstructible()) ||
    swidClass.factoryConstructors.isNotEmpty ||
    swidClass.staticMethods.isNotEmpty ||
    swidClass.staticConstFieldDeclarations.firstWhereOrNull(
          (x) => isInexpressibleStaticConst(
            parentClass: swidClass,
            staticConst: x.value,
          ),
        ) !=
        null;
