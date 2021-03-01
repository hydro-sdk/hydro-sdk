import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';

String transformDoubleLiteralToTs(
        {@required SwidDoubleLiteral swidDoubleLiteral}) =>
    swidDoubleLiteral.value;
