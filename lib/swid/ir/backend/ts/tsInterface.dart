import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:meta/meta.dart';

class TsInterface {
  final String name;
  final Map<String, SwidType> members;

  TsInterface({
    @required this.name,
    @required this.members,
  });

  factory TsInterface.fromSwidFunctiontype(
      {@required SwidFunctionType swidFunctionType, String name}) {
    return TsInterface(
      name: "${name ?? swidFunctionType.name}Props",
      members: Map.from(swidFunctionType.namedParameterTypes),
    );
  }

  // factory TsInterface.fromSwidClass({@required SwidClass swidClass}) {
  //   return TsInterface(
  //       name: "I${swidClass.name}",
  //       members: Map.fromEntries(swidClass.methods
  //               ?.map((x) => MapEntry("_dart_${x.name}",
  //                   SwidType.fromSwidFunctionType(swidFunctionType: x)))
  //               ?.toList() ??
  //           {}));
  // }

  String toTsSource() {
    if (members?.isNotEmpty ?? false) {
      var res = ["export $name {"];
      members.forEach((key, value) {
        SwidFunctionType swidFunctionType = value.maybeWhen(
            fromSwidFunctionType: (res) => res, orElse: () => null);
        res += [
          "    ${key}: ${transformFunctionTypeToTs(swidFunctionType: swidFunctionType)};"
        ];
      });
      res.add("}");
      return res.join("\n");
    }
    return "";
  }
}
