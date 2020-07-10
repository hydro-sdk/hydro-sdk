import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

typedef Box<T> Boxer<T>(
    {@required T vmObject, @required HydroState hydroState});

Map<Type, Boxer<dynamic>> _boxers = {};

void registerBoxer<T>({@required Boxer<T> boxer}) {
  _boxers[T] = ({vmObject, hydroState}) =>
      boxer(vmObject: vmObject, hydroState: hydroState);
}

Box<T> maybeBoxObject<T>(
    {@required T object, @required HydroState hydroState}) {
  assert(hydroState != null);
  var boxer = _boxers[T];
  if (boxer != null) {
    var res = boxer(vmObject: object, hydroState: hydroState);

    if (res != null) {
      return res;
    }
  }
  throw "No boxer registered for type $T";
}
