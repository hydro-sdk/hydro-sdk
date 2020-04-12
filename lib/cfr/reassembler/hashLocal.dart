import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:hydro_sdk/cfr/vm/local.dart';

List<int> hashLocal(Local local) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add([...local.toString().codeUnits, local.from, local.to]);

  input.close();
  output.close();
  return output.events.single.bytes;
}
