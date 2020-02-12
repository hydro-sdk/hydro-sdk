/// <reference path="./../../env/flutter/widgets/statelessWidget.d.ts" />


import { Scaffold, AppBar, Text, Widget } from 'flutter/index';
import { FlatButton } from "flutter/material/flatButton";
import { Center } from "flutter/widgets/index";
// import { StatelessWidget } from 'flutter/widgets/statelessWidget';

declare let buildResult: Widget;

declare class StatelessWidget implements Widget {
    tag: string;
    public build(): Widget;
}


// class MyWidget extends StatelessWidget {
//     public label: string;
//     public constructor(label: string) {
//         super();
//         print("Called new mywidget");
//         this.label = label;
//     }

//     public build(): Widget {
//         print("called mywdiget build");
//         return Text(this.label);
//     }
// }

class MyWidget {
    public label: string;
    public constructor(label: string) {
        print("Called new mywidget");
        this.label = label;
    }

    public build(): Widget {
        print("called mywdiget build");
        return Text(this.label);
    }
}

let myWidget: MyWidget = new MyWidget("hello world");

let stateless = new StatelessWidget();

buildResult = Scaffold({
    appBar: AppBar({
        title: Text("")
    }),
    body: Center({
        child: FlatButton({
            child: Text("FlatButton"),
            onPressed: () => { print(""); }
        })
    })
});