import { Scaffold, AppBar, Text, Widget } from 'flutter/index';
import { FlatButton } from "flutter/material/flatButton";
import { StatelessWidget, Center } from "flutter/widgets/index";

declare let buildResult: Widget;

class MyWidget extends StatelessWidget {
    public label: string;
    public constructor(label: string) {
        super();

        this.label = label;
    }

    public build(): Widget {
        return new FlatButton({
            child: Text(`Hello from ${this.label}`),
            onPressed: () => { print(`Hello from ${this.label}`); }
        });

    }
}

buildResult = new Scaffold({
    appBar: new AppBar({
        title: Text("Hello")
    }),
    body: new Center({ child: new MyWidget("MyWidget") })
});