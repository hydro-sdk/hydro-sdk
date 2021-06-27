import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

String sha256Data(List<int> data) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add(data);

  input.close();
  output.close();

  return output.events.single.toString();
}
