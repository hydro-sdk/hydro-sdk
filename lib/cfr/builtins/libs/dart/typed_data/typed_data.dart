import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/byteBuffer.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/byteData.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/endian.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/float32List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/float32x4.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/float32x4List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/float64List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/float64x2.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/float64x2List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/int16List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/int32List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/int32x4.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/int32x4List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/int64List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/int8List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/typedData.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/uint16List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/uint32List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/uint64List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/uint8ClampedList.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/uint8List.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableByteBufferView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableByteDataView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableFloat32ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableFloat32x4ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableFloat64ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableFloat64x2ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableInt16ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableInt32ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableInt32x4ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableInt64ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableInt8ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableUint16ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableUint32ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableUint64ListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableUint8ClampedListView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/unmodifiableUint8ListView.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadtyped_data(
    {required HydroState hydroState, required HydroTable table}) {
  final typed_data = HydroTable();
  table['typed_data'] = typed_data;
  loadUnmodifiableUint8ClampedListView(
      table: typed_data, hydroState: hydroState);
  loadUnmodifiableUint8ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableInt32x4ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableInt32ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableFloat32x4ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableInt64ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableUint64ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableUint32ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableInt8ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableUint16ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableInt16ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableFloat64x2ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableFloat64ListView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableFloat32ListView(table: typed_data, hydroState: hydroState);
  loadByteBuffer(table: typed_data, hydroState: hydroState);
  loadTypedData(table: typed_data, hydroState: hydroState);
  loadEndian(table: typed_data, hydroState: hydroState);
  loadByteData(table: typed_data, hydroState: hydroState);
  loadInt8List(table: typed_data, hydroState: hydroState);
  loadUint8List(table: typed_data, hydroState: hydroState);
  loadUint8ClampedList(table: typed_data, hydroState: hydroState);
  loadInt16List(table: typed_data, hydroState: hydroState);
  loadUint16List(table: typed_data, hydroState: hydroState);
  loadInt32List(table: typed_data, hydroState: hydroState);
  loadUint32List(table: typed_data, hydroState: hydroState);
  loadInt64List(table: typed_data, hydroState: hydroState);
  loadUint64List(table: typed_data, hydroState: hydroState);
  loadFloat32List(table: typed_data, hydroState: hydroState);
  loadFloat64List(table: typed_data, hydroState: hydroState);
  loadFloat32x4List(table: typed_data, hydroState: hydroState);
  loadInt32x4List(table: typed_data, hydroState: hydroState);
  loadFloat64x2List(table: typed_data, hydroState: hydroState);
  loadFloat32x4(table: typed_data, hydroState: hydroState);
  loadInt32x4(table: typed_data, hydroState: hydroState);
  loadFloat64x2(table: typed_data, hydroState: hydroState);
  loadUnmodifiableByteBufferView(table: typed_data, hydroState: hydroState);
  loadUnmodifiableByteDataView(table: typed_data, hydroState: hydroState);
}
