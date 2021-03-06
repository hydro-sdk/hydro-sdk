import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/isInexpressibleStaticConst.dart';

bool requiresDartClassTranslationUnit({@required SwidClass swidClass}) =>
    swidClass.name[0] != "_" &&
    swidClass.originalPackagePath != "dart:_internal" &&
    (requiresDartBinding(swidClass: swidClass) ||
        swidClass.isConstructible() ||
        swidClass.staticConstFieldDeclarations.firstWhere(
              (x) => isInexpressibleStaticConst(
                  parentClass: swidClass, staticConst: x.value),
              orElse: () => null,
            ) !=
            null);
