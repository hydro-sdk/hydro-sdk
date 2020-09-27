import 'package:hydro_sdk/swid/swidClass.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:meta/meta.dart';

class TsInterface {
  final String name;
  final Map<String, SwidType> members;

  TsInterface({
    @required this.name,
    @required this.members,
  });

  factory TsInterface.fromSwidClass({@required SwidClass swidClass}) {
    return TsInterface(
      name: "${swidClass.name}Props",
      members: Map.from(swidClass.constructorType?.namedParameterTypes),
    );
  }
}
