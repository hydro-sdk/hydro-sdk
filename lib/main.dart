import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
      args: [], baseUrl: "http://127.0.0.1:5000/examples/hotel-booking.hc"));
}
