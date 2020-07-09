import { ChangeNotifier } from "../../runtime/flutter/foundation/changeNotifier";
import { InheritedWidget } from "../../runtime/flutter/widgets/inheritedWidget";
import { Type } from "../../runtime/dart/core/type";
import { Widget } from "../../runtime/flutter/widget";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { AnimatedBuilder } from "../../runtime/flutter/widgets/animatedBuilder";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { AppBar } from "../../runtime/flutter/material/appBar";
import { Text } from "../../runtime/flutter/widgets/text";
import { Center } from "../../runtime/flutter/widgets/center";
import { Column } from "./../../runtime/flutter/widgets/column";
import { FloatingActionButton } from "./../../runtime/flutter/material/floatingActionButton";
import { Icon } from "./../../runtime/flutter/widgets/icon";
import { runApp } from "./../../runtime/flutter/runApp";
import { add } from "./../../runtime/flutter/material/icons/add";
import { MainAxisAlignment } from "../../runtime/flutter/widgets/mainAxisAlignment";
import { Theme } from "../../runtime/flutter/material/theme";
import { pauseInDebugger } from "../../runtime/dart/developer/debugger";

class CounterModel extends ChangeNotifier {
    public counter = 0;

    public static staticType = new Type(CounterModel);
    public runtimeType = CounterModel.staticType;

    public constructor() {
        super();
    }

    public increment = ():void =>{
        this.counter += 1;
        this.notifyListeners();
    }
}

class InheritedModel<T extends ChangeNotifier & { runtimeType: Type }> extends InheritedWidget {
    public model: T;
    public runtimeType: Type;
    public child: Widget;

    public constructor({
        model,
        child
    }: {
        model: T,
        child: Widget
    }) {
        super();
        this.model = model;
        this.child = child;
        this.runtimeType = model.runtimeType;
    }
}

class ScopedModel<T extends ChangeNotifier & { runtimeType: Type }> extends StatelessWidget {
    public model: T;
    public child: Widget;

    public constructor({
        model,
        child
    }: {
        model: T,
        child: Widget
    }) {
        super();
        this.model = model;
        this.child = child;
    }

    public build() {
        return new AnimatedBuilder({
            animation: this.model,
            builder: (context) => new InheritedModel<T>({
                model: this.model,
                child: this.child
            })
        });
    }

    public static of<T extends ChangeNotifier & { runtimeType: Type }>(context: BuildContext, type: T["runtimeType"]): T {
        const inheritedModel: InheritedModel<T> = context.ancestorInheritedElementForWidgetOfExactType(type);
        return inheritedModel.model;
    }
}

type ScopedModelDescendantBuilder<T extends ChangeNotifier & { runtimeType: Type }> = (context: BuildContext, child: Widget, model: T) => Widget;

class ScopedModelDescendant<T extends ChangeNotifier & { runtimeType: Type }> extends StatelessWidget {
    public builder: ScopedModelDescendantBuilder<T>;
    public child: Widget;
    public type: T["runtimeType"];

    public constructor({
        builder,
        child,
        type
    }: {
        builder: ScopedModelDescendantBuilder<T>,
        child: Widget,
        type: T["runtimeType"]
    }) {
        super();

        this.builder = builder;
        this.child = child;
        this.type = type;
    }

    public build(context: BuildContext) {
        return this.builder(
            context,
            this.child,
            ScopedModel.of<T>(context, this.type)
        );
    }
}

class MyApp extends StatelessWidget {
    public counterModel: CounterModel;

    public constructor(counterModel: CounterModel) {
        super();
        this.counterModel = counterModel;
    }

    public build() {
        return new ScopedModel({
            model: this.counterModel,
            child: new MaterialApp({
                title: "Scoped model test",
                home: new CounterHome("Scoped model test")
            })
        });
    }
}

class CounterHome extends StatelessWidget {
    public title: string;

    public constructor(title: string) {
        super();
        this.title = title;
    }

    public build() {
        return new Scaffold({
            appBar: new AppBar({
                title: new Text(this.title),
            }),
            body: new Center({
                child: new Column({
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        new Text("You have pushed the button this many times"),
                        new ScopedModelDescendant<CounterModel>({
                            builder: (context, __, model) => {
                                return new Text(
                                    (model as any).counter.toString(), {
                                    style: Theme.of(context).textTheme.display1
                                });
                            },
                            child: undefined,
                            type: CounterModel.staticType
                        })
                    ]
                })
            }),
            floatingActionButton: new ScopedModelDescendant<CounterModel>({
                builder: (_, __, model) => {
                    return new FloatingActionButton({
                        onPressed: (model as any).increment,
                        child: new Icon(add)

                    });
                },
                child: undefined,
                type: CounterModel.staticType
            })
        });
    }
}

runApp(() => new MyApp(new CounterModel()));