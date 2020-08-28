import { runApp } from "hydro-sdk/runtime/flutter/runApp";
import { StatelessWidget, Text } from "hydro-sdk/runtime/flutter/widgets/index";
import { Widget } from "hydro-sdk/runtime/flutter/widget";
import {TextEditingController } from "hydro-sdk/runtime/flutter/widgets/textEditingController";

class MyWidget extends StatelessWidget {
    public constructor() {
        super();
    }

    public build(): Widget {
        const controller = new TextEditingController();
        const text = controller.getText().toLowerCase();
        console.log("Some familiar printing!");
        return new Text("Hello world!");
    }
}

runApp(() => new MyWidget());
