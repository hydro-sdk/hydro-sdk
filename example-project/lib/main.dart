import 'package:flutter/material.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:hydro_sdk/runFromBundle.dart';

//Hotel booking is a line for line port of https://github.com/cybdom/hotel_booking_ui
void main() => runApp(RunFromNetwork(
    baseUrl:
        "https://github.com/chgibb/hydro-sdk/raw/master/dist/hotel-booking.hc"));


//Use the following to run the output from compiling hello-world.ts and packaging it into the root asset bundle
//import 'package:hydro_sdk/runFromBundle.dart';
// void main() => runApp(RunFromBundle(
//     path:
//         "assets/hello-world.hc"));

