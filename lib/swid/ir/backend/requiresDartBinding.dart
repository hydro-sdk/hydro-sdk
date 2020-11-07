import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:meta/meta.dart';

bool requiresDartBinding({@required SwidClass swidClass}) =>
    swidClass.instanceFieldDeclarations.entries.isNotEmpty ||
    swidClass.methods.isNotEmpty;
