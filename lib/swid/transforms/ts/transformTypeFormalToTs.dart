import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

String transformTypeFormalToTs({@required SwidTypeFormal swidTypeFormal}) =>
    swidTypeFormal.value.name;
