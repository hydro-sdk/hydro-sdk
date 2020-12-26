import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/transformOperatorName.dart';

SwidClass transformOperatorNames({@required SwidClass swidClass}) =>
    SwidClass.clone(
        swidClass: swidClass,
        methods: swidClass.methods
                ?.map((x) => transformOperatorName(swidFunctionType: x))
                ?.toList() ??
            []);
