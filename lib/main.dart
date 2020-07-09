import 'dart:async';

import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

class _InheritedModel<T extends ChangeNotifier> extends InheritedWidget {
  final T model;

  _InheritedModel({Key key, Widget child, T model})
      : this.model = model,
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedModel<T> oldWidget) => true;
}

class ScopedModel<T extends ChangeNotifier> extends StatelessWidget {
  /// The [Model] to provide to [child] and its descendants.
  final T model;

  /// The [Widget] the [model] will be available to.
  final Widget child;

  ScopedModel({@required this.model, @required this.child})
      : assert(model != null),
        assert(child != null);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: model,
      builder: (context, _) => _InheritedModel<T>(model: model, child: child),
    );
  }

  static T of<T extends ChangeNotifier>(
    BuildContext context, {
    bool rebuildOnChange = false,
  }) {
    final Type type = _type<_InheritedModel<T>>();

    Widget widget = rebuildOnChange
        ? context.inheritFromWidgetOfExactType(type)
        : context.ancestorInheritedElementForWidgetOfExactType(type)?.widget;

    if (widget == null) {
      throw ScopedModelError();
    } else {
      return (widget as _InheritedModel<T>).model;
    }
  }

  static Type _type<T>() => T;
}

typedef Widget ScopedModelDescendantBuilder<T extends ChangeNotifier>(
  BuildContext context,
  Widget child,
  T model,
);

class ScopedModelDescendant<T extends ChangeNotifier> extends StatelessWidget {
  /// Builds a Widget when the Widget is first created and whenever
  /// the [Model] changes if [rebuildOnChange] is set to `true`.
  final ScopedModelDescendantBuilder<T> builder;

  /// An optional constant child that does not depend on the model.  This will
  /// be passed as the child of [builder].
  final Widget child;

  /// An optional value that determines whether the Widget will rebuild when
  /// the model changes.
  final bool rebuildOnChange;

  /// Creates the ScopedModelDescendant
  ScopedModelDescendant({
    @required this.builder,
    this.child,
    this.rebuildOnChange = true,
  });

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      child,
      ScopedModel.of<T>(context, rebuildOnChange: rebuildOnChange),
    );
  }
}

class ScopedModelError extends Error {
  ScopedModelError();

  String toString() {
    return '''Error: Could not find the correct ScopedModel.
    
To fix, please:
          
  * Provide types to ScopedModel<MyModel>
  * Provide types to ScopedModelDescendant<MyModel> 
  * Provide types to ScopedModel.of<MyModel>() 
  * Always use package imports. Ex: `import 'package:my_app/my_model.dart';
  
If none of these solutions work, please file a bug at:
https://github.com/brianegan/scoped_model/issues/new
      ''';
  }
}

class MyApp extends StatelessWidget {
  final CounterModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: model,
      child: MaterialApp(
        title: 'Scoped Model Demo',
        home: CounterHome('Scoped Model Demo'),
      ),
    );
  }
}

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    // First, increment the counter
    _counter++;

    // Then notify all the listeners.
    notifyListeners();
  }
}

class CounterHome extends StatelessWidget {
  final String title;

  CounterHome(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return Text(
                  model.counter.toString(),
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ScopedModelDescendant<CounterModel>(
        builder: (context, child, model) {
          return FloatingActionButton(
            onPressed: model.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}

// void main() {
//   runApp(MyApp(
//     model: CounterModel(),
//   ));
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
      thunks: thunks,
      args: [],
      baseUrl: "http://localhost:5000/test/widget/changeNotifier-1.hc"));
}
