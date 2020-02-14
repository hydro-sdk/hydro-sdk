import { Scaffold, AppBar, Text, Widget } from 'flutter/index';
import { FlatButton } from "flutter/material/flatButton";
import { StatelessWidget, Center } from "flutter/widgets/index";

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
                print(`Hello from ${this.label} ${this.count}`);
                this.count += 1;
            }
        });

    }
}

buildResult = new Scaffold({
    appBar: new AppBar({
        title: new Text("Hello")
    }),
    body: new Center({ child: new MyWidget("MyWidget") })
});