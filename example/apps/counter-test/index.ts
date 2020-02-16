import { Widget } from "./../../env/flutter/widget";
import { StatelessWidget } from "./../../env/flutter/widgets/statelessWidget";
import { StatefulWidget } from "./../../env/flutter/widgets/statefulWidget";
import { State } from "./../../env/flutter/widgets/state";
import { MaterialApp } from "./../../env/flutter/material/materialApp";
import { Scaffold } from "./../../env/flutter/material/scaffold";
import { AppBar } from "./../../env/flutter/material/appBar";
import { Text } from "./../../env/flutter/widgets/text";
import { Center } from "./../../env/flutter/widgets/center";
import { Column } from "./../../env/flutter/widgets/column";
import { FloatingActionButton } from "./../../env/flutter/material/floatingActionButton";
import { Icon } from "./../../env/flutter/widgets/icon";
import { Icons } from "./../../env/flutter/material/icons";
import { Theme } from "../../env/flutter/material/theme";
import { BuildContext } from "../../env/flutter/buildContext";

declare let buildResult: Widget;

class MyApp extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(): Widget {
        return new MaterialApp({
            title: "Counter App",
            initialRoute: "/",
            home: new MyHomePage("Counter App Home Page")
        });
    }
}

class MyHomePage extends StatefulWidget {
    public title: string;
    public constructor(title: string) {
        super();
        this.title = title;
    }
    public createState() {
        return new MyHomePageState(this.title);
    }
}

class MyHomePageState extends State<MyHomePage> {
    private counter: number = 0;
    public title: string;
    public constructor(title: string) {
        super();
        this.title = title;
        // this.incrementCounter = this.incrementCounter.bind(this);
    }

    private incrementCounter = () => {
        this.setState(() => {
            this.counter++;
        });
    }

    public build(context: BuildContext): Widget {
        return new Scaffold({
            appBar: new AppBar({
                title: new Text(this.title)
            }),
            body: new Center({
                child: new Column({
                    children: [
                        new Text("You have pushed the button this many times"),
                        new Text(
                            this.counter.toString(),
                            {
                                style: Theme.of(context).textTheme.display1
                            }
                        )
                    ]
                })
            }),
            floatingActionButton: new FloatingActionButton({
                child: new Icon(Icons.add),
                onPressed: this.incrementCounter
            })
        });
    }
}

buildResult = new MyApp();