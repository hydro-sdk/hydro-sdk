import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  test('', () async {
    var state = HydroState();
    loadBuiltins(hydroState: state, );
    
    var res = await state.doFile("assets/test/unit/async/futureConstructor.ts.hc");

    if(!res.success){
      print(res.values[0]);
    }

    expect(res.success, true);
  });
}
