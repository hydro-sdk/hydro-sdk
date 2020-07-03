import 'dart:async';
import 'dart:developer';

import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

class FakeRuntimeType extends Type {
  final String name;

  FakeRuntimeType({@required this.name});
  @override
  String toString() => name;

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(o) => o is FakeRuntimeType && o.name == name;
}

abstract class Model extends Listenable {
  final Set<VoidCallback> _listeners = Set<VoidCallback>();
  int _version = 0;
  int _microtaskVersion = 0;

  /// [listener] will be invoked when the model changes.
  @override
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  /// [listener] will no longer be invoked when the model changes.
  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  /// Returns the number of listeners listening to this model.
  int get listenerCount => _listeners.length;

  /// Should be called only by [Model] when the model has changed.
  @protected
  void notifyListeners() {
    // We schedule a microtask to debounce multiple changes that can occur
    // all at once.
    if (_microtaskVersion == _version) {
      _microtaskVersion++;
      scheduleMicrotask(() {
        _version++;
        _microtaskVersion = _version;

        // Convert the Set to a List before executing each listener. This
        // prevents errors that can arise if a listener removes itself during
        // invocation!
        _listeners.toList().forEach((VoidCallback listener) => listener());
      });
    }
  }
}

class ScopedModel<T extends Model> extends StatelessWidget {
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

  static T of<T extends Model>(
    BuildContext context, {
    bool rebuildOnChange = false,
    Type targetType,
  }) {
    Widget ancestorWidget;
    Element ancestorElement;

    // context.visitAncestorElements((element) {
    //   var elementrtti = element.widget.runtimeType.toString();
    //   var targetrtti = targetType.toString();
    //   print("${elementrtti} ${targetrtti}");
    //   if (element.widget.runtimeType.toString() == targetType.toString()) {
    //     // widget = element.dependOnInheritedElement(element);
    //     ancestorWidget = element.widget;
    //     ancestorElement = element;
    //     return false;
    //   }
    //   return true;
    // });

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ancestorElement.visitChildElements((element) {
    //     if (element.widget == caller) {
    //       element.dependOnInheritedElement(ancestorElement);
    //       return false;
    //     }

    //     return true;
    //   });
    // });

    ancestorWidget = rebuildOnChange
        ? context.inheritFromWidgetOfExactType(targetType)
        : context
            .ancestorInheritedElementForWidgetOfExactType(targetType)
            ?.widget;

    if (ancestorWidget == null) {
      throw Error();
    } else {
      return (ancestorWidget as _InheritedModel<T>).model;
    }
  }
}

class _InheritedModel<T extends Model> extends InheritedWidget {
  final T model;
  final int version;

  @override
  Type get runtimeType => FakeRuntimeType(name: "synthetic");

  _InheritedModel({Key key, Widget child, T model})
      : this.model = model,
        this.version = model._version,
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedModel<T> oldWidget) =>
      (oldWidget.version != version);
}

// void main() {
//   runApp(MyApp(
//     model: CounterModel(),
//   ));
// }

class MyApp extends StatelessWidget {
  final CounterModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // At the top level of our app, we'll, create a ScopedModel Widget. This
    // will provide the CounterModel to all children in the app that request it
    // using a ScopedModelDescendant.
    return ScopedModel<CounterModel>(
      model: model,
      child: MaterialApp(
        title: 'Scoped Model Demo',
        home: CounterHome('Scoped Model Demo'),
      ),
    );
  }
}

// Start by creating a class that has a counter and a method to increment it.
//
// Note: It must extend from Model.
class CounterModel extends Model {
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
    CounterModel model = ScopedModel.of(context,
        rebuildOnChange: true,
        targetType: FakeRuntimeType(name: "synthetic"));
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text(
                model.counter.toString(),
                style: Theme.of(context).textTheme.display1,
              )
            ],
          ),
        ),
        // Use the ScopedModelDescendant again in order to use the increment
        // method from the CounterModel
        floatingActionButton: FloatingActionButton(
          onPressed: model.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
      thunks: thunks,
      args: [],
      baseUrl:
          "http://localhost:5000/test/widget/inheritedWidget-1.ts.hc"));
}