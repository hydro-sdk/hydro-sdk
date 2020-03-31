import 'package:flua/runFromNetwork.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
      baseUrl: "http://10.0.2.2:5000/examples/hotel-booking.lc"));
}
