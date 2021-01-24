import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

bool requiresDartBinding({@required SwidClass swidClass}) =>
    swidClass.instanceFieldDeclarations.entries.isNotEmpty ||
    swidClass.methods.isNotEmpty;
