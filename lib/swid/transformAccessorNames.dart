import 'package:hydro_sdk/swid/swidClass.dart';
import 'package:hydro_sdk/swid/transformAccessorName.dart';
import 'package:meta/meta.dart';

SwidClass transformAccessorNames({@required SwidClass swidClass}) =>
    SwidClass.clone(
        swidClass: swidClass,
        methods: swidClass.methods
                ?.map((x) => transformAccessorName(swidFunctionType: x))
                ?.toList() ??
            []);
