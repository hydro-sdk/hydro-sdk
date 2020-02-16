import { StatelessWidget, Center, StatefulWidget, Text, State, Column } from "./../../env/flutter/widgets/index";
import { Widget } from "../../env/flutter/widget";
import { Scaffold, AppBar, MaterialApp } from "./../../env/flutter/material/index";

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
    }

    private incrementCounter() {
        this.setState(() => {
            this.counter++;
        });
    }

    public build(): Widget {
        return new Scaffold({
            appBar: new AppBar({
                title: new Text(this.title)
            }),
            body: new Center({
                child: new Column({
                    children: [
                        new Text("You have pushed the button this many times"),
                        new Text(this.counter.toString())
                    ]
                })
            })
        });
    }
}

buildResult = new MyApp();