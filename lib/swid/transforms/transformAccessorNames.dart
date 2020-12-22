import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';

SwidClass transformAccessorNames({@required SwidClass swidClass}) =>
    SwidClass.clone(
        swidClass: swidClass,
        methods: swidClass.methods
                ?.map((x) => transformAccessorName(swidFunctionType: x))
                ?.toList() ??
            []);
