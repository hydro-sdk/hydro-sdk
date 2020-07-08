import { runApp } from "./../../runtime/flutter/runApp";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Widget } from "../../runtime/flutter/widget";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { Text } from "../../runtime/flutter/widgets/text";

class MyApp extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(): Widget {
        return new MaterialApp({
            title: "Counter App",
            initialRoute: "/",
            home: new MyWidget("Counter App Home Page")
        });
    }
}

class HelperClass {
    public constructor(){
        HelperClass.helperClass1();
    }

    public static helperClass1(){
        return HelperClass.helperClass2();
    }
    public static helperClass2(){
        ({} as any).foo();
    }
}

function helperFunction(){
    return new HelperClass();
}

class MyWidget extends StatelessWidget {
    public message: string;
    public constructor(message: string) {
        super();
        this.message = message;
    }

    public build() {
        helperFunction();
        return new Text(this.message);
    }
}

runApp(() => new MyApp());