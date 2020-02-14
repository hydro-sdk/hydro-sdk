import { Scaffold, AppBar, Text, Widget } from 'flutter/index';
import { FlatButton } from "flutter/material/flatButton";
import { Center } from "flutter/widgets/index";

declare let buildResult: Widget;

declare class StatelessWidget implements Widget {
    tag: string;
    public build(): Widget;
    public constructor();
}



buildResult = Scaffold({ appBar: AppBar({ title: Text("") }) });

let stateless = new StatelessWidget();

print("StatelessWidget");
print(StatelessWidget as any);

print("stateless")
print(stateless as any);

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

// let myWidget: MyWidget = new MyWidget("hello world");


buildResult = Scaffold({
    appBar: AppBar({
        title: Text("")
    }),
    body: Center({
        child: FlatButton({
            child: stateless,
            onPressed: () => { print(""); }
        })
    })
});