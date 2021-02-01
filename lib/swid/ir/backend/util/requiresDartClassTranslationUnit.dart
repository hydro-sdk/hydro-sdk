import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

bool requiresDartClassTranslationUnit({@required SwidClass swidClass}) =>
    swidClass.originalPackagePath != "dart:_internal" &&
    (requiresDartBinding(swidClass: swidClass) || swidClass.isConstructible());
