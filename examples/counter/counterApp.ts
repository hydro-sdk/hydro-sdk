import { AppBar } from "./../../runtime/flutter/material/appBar";
import { FloatingActionButton } from "./../../runtime/flutter/material/floatingActionButton";
import { Icons } from "./../../runtime/flutter/material/icons";
import { MaterialApp } from "./../../runtime/flutter/material/materialApp";
import { Scaffold } from "./../../runtime/flutter/material/scaffold";
import { Widget } from "./../../runtime/flutter/widget";
import { Center } from "./../../runtime/flutter/widgets/center";
import { Column } from "./../../runtime/flutter/widgets/column";
import { Icon } from "./../../runtime/flutter/widgets/icon";
import { State } from "./../../runtime/flutter/widgets/state";
import { StatefulWidget } from "./../../runtime/flutter/widgets/statefulWidget";
import { StatelessWidget } from "./../../runtime/flutter/widgets/statelessWidget";
import { Text } from "./../../runtime/flutter/widgets/text";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { Key } from "../../runtime/flutter/foundation/key";
import { Theme } from "../../runtime/flutter/material/theme";
import { MainAxisAlignment } from "../../runtime/flutter/widgets/mainAxisAlignment";

export class CounterApp extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(): Widget {
        return new MaterialApp({
            title: "Counter App",
            initialRoute: "/",
            home: new MyHomePage("Counter App Home Page"),
        });
    }
}

class MyHomePage extends StatefulWidget {
    public title: string;
    public constructor(title: string) {
        super();
        this.title = title;
    }
    public createState(): MyHomePageState {
        return new MyHomePageState(this.title);
    }
}

class MyHomePageState extends State<MyHomePage> {
    private counter = 0;
    public title: string;
    public constructor(title: string) {
        super();
        this.title = title;
    }

    private incrementCounter = (): void => {
        this.setState(() => {
            this.counter++;
        });
    };

    public dispose() {}

    public initState() {}

    public build(context: BuildContext): Widget {
        return new Scaffold({
            appBar: new AppBar({
                title: new Text(this.title),
            }),
            body: new Center({
                child: new Column({
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        new Text("You have pushed the button this many times"),
                        new Text(this.counter.toString(), {
                            key: new Key("counter"),
                            style: Theme.of(context).textTheme.headline4,
                        }),
                    ],
                }),
            }),
            floatingActionButton: new FloatingActionButton({
                key: new Key("increment"),
                child: new Icon(Icons.add),
                onPressed: this.incrementCounter,
            }),
        });
    }
}
