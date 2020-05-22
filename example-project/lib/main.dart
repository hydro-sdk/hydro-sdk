import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

class ShowCase extends StatelessWidget {
  ShowCase();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "counter": (BuildContext context) => Builder(
              builder: (BuildContext context) => RunFromNetwork(
                  args: [],
                  baseUrl:
                      "https://github.com/chgibb/hydro-sdk/raw/master/dist/counter.hc")),
          "app-bar": (BuildContext context) => Builder(
              builder: (BuildContext context) => RunFromNetwork(
                  args: [],
                  baseUrl:
                      "https://github.com/chgibb/hydro-sdk/raw/master/dist/basic-app-bar.hc")),
          "animated-list": (BuildContext context) => Builder(
              builder: (BuildContext context) => RunFromNetwork(
                  args: [],
                  baseUrl:
                      "https://github.com/chgibb/hydro-sdk/raw/master/dist/animated-list.hc")),
          "hotel": (BuildContext context) => Builder(
              builder: (BuildContext context) => RunFromNetwork(
                  args: [],
                  baseUrl:
                      "https://github.com/chgibb/hydro-sdk/raw/master/dist/hotel-booking.hc")),
        },
        home: Builder(
            builder: (BuildContext context) => Scaffold(
                  appBar: AppBar(
                    title: Text("Over The Air Showcase"),
                  ),
                  body: Column(children: [
                    FlatButton(
                      child: Text("Counter Example"),
                      onPressed: () {
                        Navigator.pushNamed(context, "counter");
                      },
                    ),
                    FlatButton(
                      child: Text("App Bar Example"),
                      onPressed: () {
                        Navigator.pushNamed(context, "app-bar");
                      },
                    ),
                    FlatButton(
                      child: Text("Animated List Example"),
                      onPressed: () {
                        Navigator.pushNamed(context, "animated-list");
                      },
                    ),
                    FlatButton(
                      child: Text("Hotel Booking Example"),
                      onPressed: () {
                        Navigator.pushNamed(context, "hotel");
                      },
                    )
                  ]),
                )));
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ShowCase());
}
