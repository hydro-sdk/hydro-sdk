import { Scaffold, AppBar, Text, Widget } from 'flutter/index';
import { FlatButton } from "flutter/material/flatButton";
import { Center } from "flutter/widgets/index";
import { console } from 'ts/console';

declare let buildResult: Widget;

abstract class StatelessWidget implements Widget {
    tag: string;
    public abstract build(): Widget;
    public constructor() {
        this.tag = "";
    }
}

class MyWidget extends StatelessWidget {
    public label: string;
    public constructor(label: string) {
        super();

        this.label = label;
    }

    public build(): Widget {
        return ((): Widget => {
            return FlatButton({
                child: Text(`Hello from ${this.label}`),
                onPressed: () => { print(`Hello from ${this.label}`); }
            });
        })();
    }
}



buildResult = Scaffold({
    appBar: AppBar({
        title: Text("Hello")
    }),
    body: new MyWidget("MyWidget")
});