import 'package:flutter/cupertino.dart';
import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/09/11/18/23/london-441853_960_720.jpg"),
            ),
            previewBuilder: (BuildContext context, Animation<double> animation,
                Widget child) {
              return FittedBox(
                fit: BoxFit.cover,
                // This ClipRRect rounds the corners of the image when the
                // CupertinoContextMenu is open, even though it's not rounded when
                // it's closed. It uses the given animation to animate the corners
                // in sync with the opening animation.
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(64.0 * animation.value),
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2014/09/11/18/23/london-441853_960_720.jpg"),
                ),
              );
            },
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
