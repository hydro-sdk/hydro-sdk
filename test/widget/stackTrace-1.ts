import { runApp } from "./../../runtime/flutter/runApp";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { Widget } from "../../runtime/flutter/widget";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Text } from "../../runtime/flutter/widgets/text";

class MyApp extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(): Widget {
        return new MaterialApp({
            title: "Counter App",
            initialRoute: "/",
            home: new MyWidget("Counter App Home Page"),
        });
    }
}

class MyWidget extends StatelessWidget {
    public message: string;
    public constructor(message: string) {
        super();
        this.message = message;
    }

    public build() {
        (this.message as any).foo = "bar";
        return new Text(this.message);
    }
}

runApp(() => new MyApp());
