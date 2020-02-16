import { StatelessWidget, Center, StatefulWidget, Text, State, Column } from "./../../env/flutter/widgets/index";
import { Widget } from "../../env/flutter/widget";
import { Scaffold, AppBar, FlatButton, MaterialApp } from "./../../env/flutter/material/index";
import { console } from "./../../env/ts/console";

declare let buildResult: Widget;

class MyWidget extends StatelessWidget {
    public label: string;
    public count: number;
    public constructor(label: string) {
        super();
        this.label = label;
        this.count = 0;
    }

    public build(): Widget {
        return new FlatButton({
            child: new Text(`Hello from ${this.label} ${this.count}`),
            onPressed: () => {
                console.log(`Hello from ${this.label} ${this.count}`);
                this.count += 1;
            }
        });

    }
}

class MyStatefulWidget extends StatefulWidget {
    public createState(): MyStatefulWidgetState {
        return new MyStatefulWidgetState();
    }
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
    count: number;
    public constructor() {
        super();
        this.count = 0;
    }
    public build(): Widget {
        return new FlatButton({
            child: new Text(`Hello stateful ${this.count}`),
            onPressed: () => {
                this.setState(() => {
                    this.count += 1;
                });
            }
        });
    }
}

buildResult = new MaterialApp({
    initialRoute: "/",
    home: new Scaffold({
        appBar: new AppBar({
            title: new Text("Hello")
        }),
        body: new Column({
            children: [
                new Center({
                    child: new MyWidget("MyWidget")
                }),
                new Center({
                    child: new MyStatefulWidget()
                })
            ]
        })
    })
});