import 'package:hydro_sdk/swid/TsIr.dart';
import 'package:hydro_sdk/swid/ir/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:meta/meta.dart';

class TsInterface implements TsIr {
  final String name;
  final Map<String, SwidType> members;

  TsInterface({
    @required this.name,
    @required this.members,
  });

  factory TsInterface.fromSwidFunctiontype(
      {@required SwidFunctionType swidFunctionType, String name}) {
    return TsInterface(
      name: "${swidFunctionType.name ?? name}Props",
      members: Map.from(swidFunctionType.namedParameterTypes),
    );
  }

  factory TsInterface.fromSwidClass({@required SwidClass swidClass}) {
    return TsInterface(
        name: "I${swidClass.name}",
        members: Map.fromEntries(
            swidClass.methods?.map((x) => MapEntry("_dart_${x.name}", x))?.toList() ??
                {}));
  }

  String toTsSource() {
    var res = ["export $name {"];
    members.forEach((key, value) {
      res += [
        "    ${key}: ${transformFunctionTypeToTs(swidFunctionType: value)};"
      ];
    });
    res.add("}");
    return res.join("\n");
  }
}
