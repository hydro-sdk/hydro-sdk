import 'package:hydro_sdk/swid/narrowSwidType.dart';
import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:meta/meta.dart';

SwidType cloneSwidType({@required SwidType swidType}) => narrowSwidType(
    swidType: swidType,
    onSwidFunctionType: (res) => SwidFunctionType.clone(swidFunctionType: res),
    onSwidType: (res) => SwidType.clone(swidType: res));
