import { runApp } from "hydro-sdk/runtime/flutter/runApp";
import { StatelessWidget, Text } from "hydro-sdk/runtime/flutter/widgets";
import { Widget } from "hydro-sdk/runtime/flutter/widget";
import { console } from "hydro-sdk/runtime/ts/console";

class MyWidget extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(): Widget {
        console.log("Some familiar printing!");
        return new Text("Hello world!");
    }
}

runApp(() => new MyWidget());
