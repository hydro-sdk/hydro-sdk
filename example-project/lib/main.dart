import 'package:flutter/material.dart';
import 'package:hydro_sdk/runFromNetwork.dart';

//Hotel booking is a line for line port of https://github.com/cybdom/hotel_booking_ui
void main() => runApp(RunFromNetwork(
    baseUrl:
        "https://github.com/chgibb/hydro-sdk/raw/master/dist/hotel-booking.hc"));

