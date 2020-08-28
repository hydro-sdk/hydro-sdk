import { runApp } from "hydro-sdk/runtime/flutter/runApp";
//Make sure to import from /index specifically if using barell imports.
//The compiler won't resolve /index by itself
import {
    StatelessWidget,
    Text,
    Container,
    TextEditingController
} from "hydro-sdk/runtime/flutter/widgets/index";
import { Widget } from "hydro-sdk/runtime/flutter/widget";
import { Key } from "hydro-sdk/runtime/flutter/foundation/key";

class MyWidget extends StatelessWidget {
    private controller = new TextEditingController({ text: "Some convoluted but familiar functions" });
    public constructor() {
        super();
    }

    public build(): Widget {
        console.log(this.controller.getText().toLowerCase());
        return new Container({
            key: new Key(this.controller.getText().toLowerCase()),
            child: new Text("Hello world!")
        });
    }
}

runApp(() => new MyWidget());
