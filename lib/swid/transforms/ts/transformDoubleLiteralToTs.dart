import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidDoubleLiteral.dart';

String transformDoubleLiteralToTs(
        {@required SwidDoubleLiteral swidDoubleLiteral}) =>
    swidDoubleLiteral.value;
