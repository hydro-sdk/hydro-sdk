import { MaterialApp } from "./../../runtime/flutter/material/materialApp";
import { runApp } from "./../../runtime/flutter/runApp";
import { SizedBox } from "./../../runtime/flutter/widgets/sizedBox";
import { Key } from "../../runtime/flutter/foundation/key";
import { Column } from "../../runtime/flutter/widgets/column";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Text } from "../../runtime/flutter/widgets/text";
import { TextEditingController } from "../../runtime/flutter/widgets/textEditingController";

class MyApp extends StatelessWidget {
    public controller = new TextEditingController({
        text: "Hello world",
    });

    public constructor() {
        super();
    }

    public build() {
        this.controller.setText("Hello world2");
        return new MaterialApp({
            home: new Column({
                children: [
                    new SizedBox({
                        key: new Key(this.controller.getText()),
                    }),
                    new Text(this.controller.getText()),
                ],
            }),
        });
    }
}

runApp(() => new MyApp());
